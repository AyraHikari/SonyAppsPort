.class public Lcom/sonyericsson/music/fullplayer/ShuffleButton;
.super Lcom/sonyericsson/music/fullplayer/TrackStateButton;
.source "ShuffleButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/fullplayer/TrackStateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/fullplayer/ShuffleButton;->setShuffleActive(Z)V

    return-void
.end method

.method private getShuffleSelector(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f0801c0

    goto :goto_0

    :cond_0
    const p1, 0x7f0801bf

    :goto_0
    return p1
.end method


# virtual methods
.method setShuffleActive(Z)V
    .locals 1

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setActivated(Z)V

    .line 22
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/ShuffleButton;->getShuffleSelector(Z)I

    move-result v0

    .line 23
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    if-eqz p1, :cond_0

    const p1, 0x7f100074

    goto :goto_0

    :cond_0
    const p1, 0x7f100075

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
