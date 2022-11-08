.class public interface abstract Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
.super Ljava/lang/Object;
.source "StatsLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logging/StatsLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatsLogger"
.end annotation


# virtual methods
.method public log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 0
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 726
    return-void
.end method

.method public sendToInteractionJankMonitor(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View;)V
    .locals 0
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    .param p2, "v"    # Landroid/view/View;

    .line 733
    return-void
.end method

.method public withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "containerInfo"    # Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 705
    return-object p0
.end method

.method public withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "dstState"    # I

    .line 674
    return-object p0
.end method

.method public withEditText(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "editText"    # Ljava/lang/String;

    .line 695
    return-object p0
.end method

.method public withFromState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "fromState"    # Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 681
    return-object p0
.end method

.method public withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 653
    return-object p0
.end method

.method public withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 645
    return-object p0
.end method

.method public withRank(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "rank"    # I

    .line 660
    return-object p0
.end method

.method public withSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "slice"    # Lcom/android/launcher3/logger/LauncherAtom$Slice;

    .line 719
    return-object p0
.end method

.method public withSliceItem(Landroidx/slice/SliceItem;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "sliceItem"    # Landroidx/slice/SliceItem;

    .line 712
    return-object p0
.end method

.method public withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "srcState"    # I

    .line 667
    return-object p0
.end method

.method public withToState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "toState"    # Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 688
    return-object p0
.end method
