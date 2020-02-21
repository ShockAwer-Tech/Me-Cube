import React from "react";
import VideoList from "./videos/video_list_container";
class HomePage extends React.Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
            <>
                <h2>Recommended</h2>
                <VideoList limit="8"/>
                <br />
                </>
        );
    }
}

export default HomePage;