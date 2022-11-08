.class Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;
.super Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;
.source "LauncherSwipeHandlerV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/LauncherSwipeHandlerV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingViewHomeAnimationFactory"
.end annotation


# instance fields
.field private final mFloatingView:Lcom/android/launcher3/views/FloatingView;

.field final synthetic this$0:Lcom/android/quickstep/LauncherSwipeHandlerV2;


# direct methods
.method constructor <init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;Lcom/android/launcher3/views/FloatingView;)V
    .locals 1
    .param p2, "floatingView"    # Lcom/android/launcher3/views/FloatingView;

    .line 251
    iput-object p1, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;->this$0:Lcom/android/quickstep/LauncherSwipeHandlerV2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory-IA;)V

    .line 252
    iput-object p2, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;->mFloatingView:Lcom/android/launcher3/views/FloatingView;

    .line 253
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;->mFloatingView:Lcom/android/launcher3/views/FloatingView;

    invoke-interface {v0}, Lcom/android/launcher3/views/FloatingView;->fastFinish()V

    .line 258
    return-void
.end method
