
function HelloWorld(props) {
  return (
    <React.Fragment>
      <h1>Greeting: {props.greeting}</h1>
      <br/>
        <button type="button" className="btn btn-primary">Primary</button>
    </React.Fragment>
  );
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};


