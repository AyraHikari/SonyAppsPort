.class public Lcom/sonyericsson/music/ui/TouchInterceptLayout;
.super Landroid/widget/FrameLayout;
.source "TouchInterceptLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/ui/TouchInterceptLayout$TouchInterceptDelegate;
    }
.end annotation


# instance fields
.field private mTarget:Lcom/sonyericsson/music/ui/TouchInterceptLayout$TouchInterceptDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 31
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/sonyericsson/music/ui/TouchInterceptLayout;->mTarget:Lcom/sonyericsson/music/ui/TouchInterceptLayout$TouchInterceptDelegate;

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v1, p1}, Lcom/sonyericsson/music/ui/TouchInterceptLayout$TouchInterceptDelegate;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return v0
.end method

.method public setTarget(Lcom/sonyericsson/music/ui/TouchInterceptLayout$TouchInterceptDelegate;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/sonyericsson/music/ui/TouchInterceptLayout;->mTarget:Lcom/sonyericsson/music/ui/TouchInterceptLayout$TouchInterceptDelegate;

    return-void
.end method
