.class public final synthetic Lcom/android/launcher3/config/FeatureFlags$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;

    check-cast p2, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;

    invoke-static {p1, p2}, Lcom/android/launcher3/config/FeatureFlags;->lambda$initialize$0(Lcom/android/launcher3/config/FeatureFlags$DebugFlag;Lcom/android/launcher3/config/FeatureFlags$DebugFlag;)I

    move-result p1

    return p1
.end method
