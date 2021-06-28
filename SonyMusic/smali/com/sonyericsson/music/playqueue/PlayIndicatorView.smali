.class public Lcom/sonyericsson/music/playqueue/PlayIndicatorView;
.super Landroid/widget/RelativeLayout;
.source "PlayIndicatorView.java"


# instance fields
.field private mBufferingSpinner:Landroid/widget/ProgressBar;

.field private mPlayIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playqueue/PlayIndicatorView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c009a

    .line 33
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090187

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayIndicatorView;->mPlayIndicator:Landroid/widget/ImageView;

    .line 36
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayIndicatorView;->mPlayIndicator:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f090188

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayIndicatorView;->mBufferingSpinner:Landroid/widget/ProgressBar;

    .line 39
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayIndicatorView;->mBufferingSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 40
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayIndicatorView;->mBufferingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setPlayIndicator(I)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/UIUtils;->getTintedDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayIndicatorView;->mPlayIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayIndicatorView;->mPlayIndicator:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayIndicatorView;->mBufferingSpinner:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public showBuffering()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayIndicatorView;->mBufferingSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayIndicatorView;->mPlayIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
