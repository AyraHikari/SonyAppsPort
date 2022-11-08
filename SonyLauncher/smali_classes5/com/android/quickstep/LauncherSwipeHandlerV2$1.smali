.class Lcom/android/quickstep/LauncherSwipeHandlerV2$1;
.super Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
.source "LauncherSwipeHandlerV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/LauncherSwipeHandlerV2;->createHomeAnimationFactory(Ljava/util/ArrayList;JZZLcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/LauncherSwipeHandlerV2;

.field final synthetic val$duration:J


# direct methods
.method constructor <init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/LauncherSwipeHandlerV2;

    .line 77
    iput-object p1, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$1;->this$0:Lcom/android/quickstep/LauncherSwipeHandlerV2;

    iput-wide p2, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$1;->val$duration:J

    invoke-direct {p0, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;-><init>(Lcom/android/quickstep/SwipeUpAnimationLogic;)V

    return-void
.end method


# virtual methods
.method public createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 3

    .line 80
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-wide v1, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$1;->val$duration:J

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    return-object v0
.end method
