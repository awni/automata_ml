from IPython.core.display import display, HTML

def init():
    return display(
    HTML("""
        <style>
             .container { width:900px !important; }
             .figure {display:table; margin:auto;}
             .img {float: left; margin: 10px; min-width: 300px;}
             .caption {display:table-caption;caption-side:bottom;text-align:justify;color: rgba(0,0,0,0.6);}
             td { background: white;}
            .table_caption {
                font-size:14px;
                float: left;
                text-align: justify;
                color: rgba(0,0,0,0.6);
            }
        </style>
        """))
