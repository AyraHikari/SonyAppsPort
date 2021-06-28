.class Lcom/sonyericsson/music/landingpage/LandingPageFragment$FrameDelay;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameDelay"
.end annotation


# instance fields
.field final mAction:Ljava/lang/Runnable;

.field mFramesRemaining:I


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 0

    .line 1265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1266
    iput p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$FrameDelay;->mFramesRemaining:I

    .line 1267
    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$FrameDelay;->mAction:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 1276
    iget p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$FrameDelay;->mFramesRemaining:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$FrameDelay;->mFramesRemaining:I

    if-lez p1, :cond_0

    .line 1277
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 1279
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$FrameDelay;->mAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 1271
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
