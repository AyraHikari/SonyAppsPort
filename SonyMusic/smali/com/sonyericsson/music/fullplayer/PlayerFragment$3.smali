.class Lcom/sonyericsson/music/fullplayer/PlayerFragment$3;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/sonyericsson/music/common/UIUtils$MeasureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/fullplayer/PlayerFragment;->onCreateAnimator(IZI)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

.field final synthetic val$miniArtBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$miniArtRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$3;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$3;->val$miniArtRect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$3;->val$miniArtBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeasured(Landroid/view/View;II)V
    .locals 0

    .line 495
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$3;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$3;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 496
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$3;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$3;->val$miniArtRect:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$3;->val$miniArtBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, p2, p3}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$1300(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
