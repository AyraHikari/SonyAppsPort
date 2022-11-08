.class Lcom/android/quickstep/views/RecentsView$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/RecentsView;->launchSideTaskInLiveTileMode(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/views/RecentsView;

    .line 1058
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$13;, "Lcom/android/quickstep/views/RecentsView$13;"
    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$13;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1061
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$13;, "Lcom/android/quickstep/views/RecentsView$13;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$13;->this$0:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    .line 1062
    return-void
.end method
