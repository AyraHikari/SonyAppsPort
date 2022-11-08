.class public interface abstract Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
.super Ljava/lang/Object;
.source "StatsLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logging/StatsLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatsLatencyLogger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;
    }
.end annotation


# virtual methods
.method public log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 0
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 801
    return-void
.end method

.method public withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0
    .param p1, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 765
    return-object p0
.end method

.method public withLatency(J)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0
    .param p1, "latencyInMillis"    # J

    .line 773
    return-object p0
.end method

.method public withPackageId(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0
    .param p1, "packageId"    # I

    .line 794
    return-object p0
.end method

.method public withQueryLength(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0
    .param p1, "queryLength"    # I

    .line 787
    return-object p0
.end method

.method public withType(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0
    .param p1, "type"    # Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    .line 780
    return-object p0
.end method
