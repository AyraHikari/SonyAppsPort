.class public final synthetic Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->lambda$onAnimationStart$0(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result p1

    return p1
.end method
