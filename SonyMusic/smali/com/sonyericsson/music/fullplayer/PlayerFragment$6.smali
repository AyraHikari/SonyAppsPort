.class Lcom/sonyericsson/music/fullplayer/PlayerFragment$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/fullplayer/PlayerFragment;->createEnterAnimator(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$6;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 554
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$6;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$1400(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
