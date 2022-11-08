.class Lcom/android/quickstep/AbsSwipeUpHandler$1;
.super Ljava/lang/Object;
.source "AbsSwipeUpHandler.java"

# interfaces
.implements Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/AbsSwipeUpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/AbsSwipeUpHandler;

    .line 172
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$1;, "Lcom/android/quickstep/AbsSwipeUpHandler$1;"
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$1;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 175
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$1;, "Lcom/android/quickstep/AbsSwipeUpHandler$1;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$1;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eq v0, p1, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$1;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 179
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$1;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 180
    return-void
.end method
