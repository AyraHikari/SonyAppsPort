.class Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;
.super Ljava/lang/Object;
.source "StatsLogCompatManager.java"

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/logging/StatsLogCompatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsCompatLatencyLogger"
.end annotation


# instance fields
.field private final mActivityContext:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mInstanceId:Lcom/android/launcher3/logging/InstanceId;

.field private mLatencyInMillis:J

.field private mPackageId:I

.field private mQueryLength:I

.field private mType:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityContext"    # Lcom/android/launcher3/views/ActivityContext;

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    invoke-static {}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$sfgetDEFAULT_INSTANCE_ID()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 462
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->UNKNOWN:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mType:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    .line 463
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mPackageId:I

    .line 465
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mQueryLength:I

    .line 468
    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mContext:Landroid/content/Context;

    .line 469
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mActivityContext:Ljava/util/Optional;

    .line 470
    return-void
.end method


# virtual methods
.method public log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 12
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 504
    invoke-static {}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$sfgetIS_VERBOSE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 506
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 507
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .local v1, "logStringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "InstanceId:%s "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    iget-wide v4, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mLatencyInMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "%s=%sms"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatsLatencyLog"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "logStringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    const/16 v4, 0x1aa

    .line 514
    invoke-interface {p1}, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;->getId()I

    move-result v5

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 515
    invoke-virtual {v0}, Lcom/android/launcher3/logging/InstanceId;->getId()I

    move-result v6

    iget v7, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mPackageId:I

    iget-wide v8, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mLatencyInMillis:J

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mType:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    .line 518
    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->getId()I

    move-result v10

    iget v11, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mQueryLength:I

    .line 513
    invoke-static/range {v4 .. v11}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIJII)V

    .line 521
    return-void
.end method

.method public withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0
    .param p1, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 474
    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 475
    return-object p0
.end method

.method public withLatency(J)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0
    .param p1, "latencyInMillis"    # J

    .line 492
    iput-wide p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mLatencyInMillis:J

    .line 493
    return-object p0
.end method

.method public withPackageId(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0
    .param p1, "packageId"    # I

    .line 486
    iput p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mPackageId:I

    .line 487
    return-object p0
.end method

.method public withQueryLength(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0
    .param p1, "queryLength"    # I

    .line 498
    iput p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mQueryLength:I

    .line 499
    return-object p0
.end method

.method public withType(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0
    .param p1, "type"    # Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    .line 480
    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mType:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    .line 481
    return-object p0
.end method
