.class public Lcom/android/quickstep/util/ActivityInitListener;
.super Ljava/lang/Object;
.source "ActivityInitListener.java"

# interfaces
.implements Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/BaseActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mActivityTracker:Lcom/android/launcher3/util/ActivityTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ActivityTracker<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mIsRegistered:Z

.field private mOnInitListener:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/BiPredicate;Lcom/android/launcher3/util/ActivityTracker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/launcher3/util/ActivityTracker<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/android/quickstep/util/ActivityInitListener;, "Lcom/android/quickstep/util/ActivityInitListener<TT;>;"
    .local p1, "onInitListener":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<TT;Ljava/lang/Boolean;>;"
    .local p2, "tracker":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/ActivityInitListener;->mIsRegistered:Z

    .line 39
    iput-object p1, p0, Lcom/android/quickstep/util/ActivityInitListener;->mOnInitListener:Ljava/util/function/BiPredicate;

    .line 40
    iput-object p2, p0, Lcom/android/quickstep/util/ActivityInitListener;->mActivityTracker:Lcom/android/launcher3/util/ActivityTracker;

    .line 41
    return-void
.end method


# virtual methods
.method protected handleInit(Lcom/android/launcher3/BaseActivity;Z)Z
    .locals 2
    .param p2, "alreadyOnHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/android/quickstep/util/ActivityInitListener;, "Lcom/android/quickstep/util/ActivityInitListener<TT;>;"
    .local p1, "activity":Lcom/android/launcher3/BaseActivity;, "TT;"
    iget-object v0, p0, Lcom/android/quickstep/util/ActivityInitListener;->mOnInitListener:Ljava/util/function/BiPredicate;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final init(Lcom/android/launcher3/BaseActivity;Z)Z
    .locals 1
    .param p2, "alreadyOnHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/android/quickstep/util/ActivityInitListener;, "Lcom/android/quickstep/util/ActivityInitListener<TT;>;"
    .local p1, "activity":Lcom/android/launcher3/BaseActivity;, "TT;"
    iget-boolean v0, p0, Lcom/android/quickstep/util/ActivityInitListener;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/ActivityInitListener;->handleInit(Lcom/android/launcher3/BaseActivity;Z)Z

    move-result v0

    return v0
.end method

.method public register()V
    .locals 1

    .line 61
    .local p0, "this":Lcom/android/quickstep/util/ActivityInitListener;, "Lcom/android/quickstep/util/ActivityInitListener<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/ActivityInitListener;->mIsRegistered:Z

    .line 62
    iget-object v0, p0, Lcom/android/quickstep/util/ActivityInitListener;->mActivityTracker:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ActivityTracker;->registerCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V

    .line 63
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 69
    .local p0, "this":Lcom/android/quickstep/util/ActivityInitListener;, "Lcom/android/quickstep/util/ActivityInitListener<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/util/ActivityInitListener;->mActivityTracker:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ActivityTracker;->unregisterCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/ActivityInitListener;->mIsRegistered:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/ActivityInitListener;->mOnInitListener:Ljava/util/function/BiPredicate;

    .line 72
    return-void
.end method
