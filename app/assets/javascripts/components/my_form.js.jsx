import {useId, useState} from 'react'

function Test() {
    setPostTitle("Hi");
    console.log(postTitle);
}
function MyForm(props) {
    const postTitleId = "TitleId";
    const postTextId = "TextId";
    const [postTitle, setPostTitle] = useState('title');
    const [postText, setPostText] = useState('text');

    function saveFpost(props, postTitle, postText) {
        console.log("HI!");
        console.log("Post title: " + postTitle + "\nPost text: " + postText);
        // props.fpost.post_text = document.getElementById("postText");
        props.fpost.post_title = postTitle;
        props.fpost.post_text = postText;
        props.fpost.post_datetime = getDate();
        props.fpost.post_user_id = 1;
        return (
            <h1>Submitted with thanks!</h1>
        );
    }

    function getDate() {
        const today = new Date();
        const month = today.getMonth() + 1;
        const year = today.getFullYear();
        const date = today.getDate();
        return month + "/" + year + "/" + date;
    }

  return (
    <React.Fragment>
        <form>
            <h1 id="HEY">HEY!</h1>
            <div className="mb-3">
                <label htmlFor={postTitleId} className="form-label">Post Title</label>
                <input type="text" className="form-control" id={postTitleId} value={postTitle} onInput={e => setPostTitle(e.target.value)}/>
            </div>
            <div className="mb-3">
                <label htmlFor={postTextId} className="form-label">Post Text</label>
                <textarea className="form-control" id={postTextId} value={postText} onInput={e => setPostText(e.target.value)}/>
            </div>
            <button className="btn btn-primary" onClick={() => saveFpost(props, postTitle, postText)}>Submit</button>
        </form>
    </React.Fragment>
  );
}


MyForm.propTypes = {
  fpost: PropTypes.node
};