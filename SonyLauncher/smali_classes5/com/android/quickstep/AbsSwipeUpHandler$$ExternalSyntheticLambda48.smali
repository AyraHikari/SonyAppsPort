.class public final synthetic Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda48;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda48;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    check-cast p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$handleTaskAppeared$14$com-android-quickstep-AbsSwipeUpHandler(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result p1

    return p1
.end method
