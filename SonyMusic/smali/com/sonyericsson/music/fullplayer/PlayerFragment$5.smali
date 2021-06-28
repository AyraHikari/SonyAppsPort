.class Lcom/sonyericsson/music/fullplayer/PlayerFragment$5;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 537
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$5;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$5;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$1600(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
