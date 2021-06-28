.class Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;
.super Ljava/lang/Object;
.source "BlurredDrawerContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ui/BlurredDrawerContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;->this$0:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;Lcom/sonyericsson/music/ui/BlurredDrawerContainer$1;)V
    .locals 0

    .line 461
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;-><init>(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;->this$0:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->access$200(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;->this$0:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->access$300(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;->this$0:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->access$400(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;->this$0:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    invoke-static {v0, v2}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->access$502(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;Z)Z

    .line 468
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;->this$0:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->access$600(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;->this$0:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->access$700(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0xc8

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;->this$0:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    invoke-static {v0, v3, v4}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->access$702(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;J)J

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;->this$0:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->access$800(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)V

    .line 484
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;->this$0:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return v1

    :cond_1
    return v2

    .line 494
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;->this$0:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->access$800(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)V

    .line 495
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;->this$0:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return v1

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;->this$0:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->access$400(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 501
    iget-object v0, p0, Lcom/sonyericsson/music/ui/BlurredDrawerContainer$SourceChangedListener;->this$0:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->access$402(Lcom/sonyericsson/music/ui/BlurredDrawerContainer;Z)Z

    :cond_4
    return v2
.end method
