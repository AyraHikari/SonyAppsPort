.class public Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewLayout;
.super Lcom/android/launcher3/InsettableFrameLayout;
.source "LauncherPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/LauncherPreviewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LauncherPreviewLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 525
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 529
    const/4 v0, 0x1

    return v0
.end method
