.class public Lcom/sonyericsson/music/fullplayer/TrackStateButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "TrackStateButton.java"


# instance fields
.field private mEnabled:Z

.field private mUserEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/TrackStateButton;->mEnabled:Z

    .line 19
    iput-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/TrackStateButton;->mUserEnabled:Z

    return-void
.end method

.method private updateEnabled()V
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/TrackStateButton;->mUserEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/TrackStateButton;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/TrackStateButton;->mEnabled:Z

    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/TrackStateButton;->updateEnabled()V

    return-void
.end method

.method public setUserEnabled(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/TrackStateButton;->mUserEnabled:Z

    .line 33
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/TrackStateButton;->updateEnabled()V

    return-void
.end method
