.class Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PlayqueueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field contextMenuIcon:Landroid/widget/ImageView;

.field contextMenuTouchArea:Landroid/widget/FrameLayout;

.field hdAudioIcon:Landroid/widget/ImageView;

.field playIndicator:Lcom/sonyericsson/music/playqueue/PlayIndicatorView;

.field text1:Landroid/widget/TextView;

.field text2:Landroid/widget/TextView;

.field text3:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->setPlayingIndicator(Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;Landroid/content/Context;Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->setPlayingTextAppearance(Landroid/content/Context;Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;)V

    return-void
.end method

.method private setPlayingIndicator(Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;)V
    .locals 1

    .line 88
    sget-object v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$2;->$SwitchMap$com$sonyericsson$music$playqueue$PlayqueueAdapter$PlayingState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 102
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->playIndicator:Lcom/sonyericsson/music/playqueue/PlayIndicatorView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 98
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->playIndicator:Lcom/sonyericsson/music/playqueue/PlayIndicatorView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->playIndicator:Lcom/sonyericsson/music/playqueue/PlayIndicatorView;

    const v0, 0x7f080164

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/playqueue/PlayIndicatorView;->setPlayIndicator(I)V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->playIndicator:Lcom/sonyericsson/music/playqueue/PlayIndicatorView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->playIndicator:Lcom/sonyericsson/music/playqueue/PlayIndicatorView;

    const v0, 0x7f080165

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/playqueue/PlayIndicatorView;->setPlayIndicator(I)V

    goto :goto_0

    .line 90
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->playIndicator:Lcom/sonyericsson/music/playqueue/PlayIndicatorView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->playIndicator:Lcom/sonyericsson/music/playqueue/PlayIndicatorView;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playqueue/PlayIndicatorView;->showBuffering()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setPlayingTextAppearance(Landroid/content/Context;Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$PlayingState;)V
    .locals 2

    .line 71
    sget-object v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$2;->$SwitchMap$com$sonyericsson$music$playqueue$PlayqueueAdapter$PlayingState:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    .line 80
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    sget-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->MEDIUM:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 81
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    sget-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p1, v1, p2, v0}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 82
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text3:Landroid/widget/TextView;

    sget-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p1, v1, p2, v0}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    goto :goto_0

    .line 75
    :pswitch_0
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    sget-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->MEDIUM:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    const/4 v1, 0x1

    invoke-static {p1, v1, p2, v0}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 76
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    sget-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p1, v1, p2, v0}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 77
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter$ViewHolder;->text3:Landroid/widget/TextView;

    sget-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p1, v1, p2, v0}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
