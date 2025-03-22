import logo from "./logo.svg";
import "./App.css";

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn CI / CD
        </a>
        <p>
          Now u can test live file changes in docker and add workflows for
          develop branch also add github pages. and finally deploy react app on
          github pages using yml file. Update in condidition of Workflows/ Add
          mew condidition in workflow
        </p>
      </header>
    </div>
  );
}

export default App;
