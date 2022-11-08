.class public Lcom/android/quickstep/logging/StatsLogCompatManager;
.super Lcom/android/launcher3/logging/StatsLogManager;
.source "StatsLogCompatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/logging/StatsLogCompatManager$StatsLogConsumer;,
        Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;,
        Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;
    }
.end annotation


# static fields
.field private static final ALL_APPS_HIERARCHY_OFFSET:I = 0x190

.field private static final DEFAULT_INSTANCE_ID:Lcom/android/launcher3/logging/InstanceId;

.field private static final DEFAULT_PAGE_INDEX:I = -0x2

.field private static final EXTENDED_CONTAINERS_HIERARCHY_OFFSET:I = 0x12c

.field private static final FOLDER_HIERARCHY_OFFSET:I = 0x64

.field private static final IS_VERBOSE:Z

.field private static final LATENCY_TAG:Ljava/lang/String; = "StatsLatencyLog"

.field public static final LOGS_CONSUMER:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/quickstep/logging/StatsLogCompatManager$StatsLogConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEARCH_ATTRIBUTES_CORRECTED_QUERY:I = 0x1

.field private static final SEARCH_ATTRIBUTES_DIRECT_MATCH:I = 0x2

.field private static final SEARCH_ATTRIBUTES_ENTRY_STATE_ALL_APPS:I = 0x4

.field private static final SEARCH_ATTRIBUTES_ENTRY_STATE_QSB:I = 0x8

.field private static final SEARCH_RESULT_HIERARCHY_OFFSET:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "StatsLog"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE_ID()Lcom/android/launcher3/logging/InstanceId;
    .locals 1

    sget-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager;->DEFAULT_INSTANCE_ID:Lcom/android/launcher3/logging/InstanceId;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetIS_VERBOSE()Z
    .locals 1

    sget-boolean v0, Lcom/android/quickstep/logging/StatsLogCompatManager;->IS_VERBOSE:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smgetAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)[B
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetCardinality(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getCardinality(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetComponentName(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getComponentName(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetFeatures(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getFeatures(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetGridX(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getGridX(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetGridY(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getGridY(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetHierarchy(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getHierarchy(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetPackageName(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getPackageName(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetPageId(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getPageId(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetParentPageId(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getParentPageId(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetSearchAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getSearchAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetStateString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getStateString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 88
    const-string v0, "StatsLog"

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/quickstep/logging/StatsLogCompatManager;->IS_VERBOSE:Z

    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/logging/InstanceId;->fakeInstanceId(I)Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager;->DEFAULT_INSTANCE_ID:Lcom/android/launcher3/logging/InstanceId;

    .line 106
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager;->LOGS_CONSUMER:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Lcom/android/launcher3/logging/StatsLogManager;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager;->mContext:Landroid/content/Context;

    .line 113
    return-void
.end method

.method public static buildStatsEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logging/InstanceId;)Landroid/util/StatsEvent;
    .locals 22
    .param p0, "info"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .param p1, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 173
    move-object/from16 v0, p0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WORKSPACE_SNAPSHOT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 175
    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->getId()I

    move-result v3

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->getNumber()I

    move-result v4

    .line 177
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/logging/InstanceId;->getId()I

    move-result v2

    move v5, v2

    :goto_0
    const/4 v6, 0x0

    .line 179
    invoke-static/range {p0 .. p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getPackageName(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/String;

    move-result-object v7

    .line 180
    invoke-static/range {p0 .. p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getComponentName(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/String;

    move-result-object v8

    .line 181
    invoke-static {v0, v1}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getGridX(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result v9

    .line 182
    invoke-static {v0, v1}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getGridY(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result v10

    .line 183
    invoke-static/range {p0 .. p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getPageId(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v11

    .line 184
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getGridX(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result v12

    .line 185
    invoke-static {v0, v1}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getGridY(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result v13

    .line 186
    invoke-static/range {p0 .. p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getParentPageId(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v14

    .line 187
    invoke-static/range {p0 .. p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getHierarchy(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v15

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getIsWork()Z

    move-result v16

    const/16 v17, 0x0

    .line 190
    invoke-static/range {p0 .. p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getCardinality(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v18

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getSpanX()I

    move-result v19

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getSpanY()I

    move-result v20

    .line 193
    invoke-static/range {p0 .. p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)[B

    move-result-object v21

    .line 173
    const/16 v2, 0x277c

    invoke-static/range {v2 .. v21}, Lcom/android/systemui/shared/system/SysUiStatsLog;->buildStatsEvent(IIIIILjava/lang/String;Ljava/lang/String;IIIIIIIZIIII[B)Landroid/util/StatsEvent;

    move-result-object v1

    return-object v1
.end method

.method private static getAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)[B
    .locals 3
    .param p0, "itemInfo"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 161
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;

    move-result-object v0

    .line 162
    .local v0, "responseBuilder":Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemAttributesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/logging/StatsLogCompatManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/quickstep/logging/StatsLogCompatManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 163
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/logging/StatsLogCompatManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/quickstep/logging/StatsLogCompatManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;)V

    .line 162
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 164
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static getCardinality(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I
    .locals 3
    .param p0, "info"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 525
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v0, :cond_0

    .line 526
    const/4 v0, 0x0

    return v0

    .line 528
    :cond_0
    sget-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 536
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getExtendedContainers()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object v0

    .line 537
    .local v0, "extendedCont":Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;->DEVICE_SEARCH_RESULT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;

    if-ne v1, v2, :cond_2

    .line 538
    nop

    .line 539
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getDeviceSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    move-result-object v1

    .line 540
    .local v1, "deviceSearchResultCont":Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->hasQueryLength()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->getQueryLength()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 540
    :goto_0
    return v2

    .line 534
    .end local v0    # "extendedCont":Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .end local v1    # "deviceSearchResultCont":Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getQueryLength()I

    move-result v0

    return v0

    .line 532
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getTaskBarContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getCardinality()I

    move-result v0

    return v0

    .line 530
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getPredictedHotseatContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->getCardinality()I

    move-result v0

    return v0

    .line 544
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getCardinality()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getComponentName(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 566
    sget-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase:[I

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 580
    const/4 v0, 0x0

    return-object v0

    .line 578
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getSlice()Lcom/android/launcher3/logger/LauncherAtom$Slice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 576
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getSearchActionItem()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 574
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getTask()Lcom/android/launcher3/logger/LauncherAtom$Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getComponentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 572
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getComponentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 570
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getShortcut()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getShortcutName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 568
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getApplication()Lcom/android/launcher3/logger/LauncherAtom$Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getComponentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getFeatures(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 683
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->WIDGET:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getWidgetFeatures()I

    move-result v0

    return v0

    .line 686
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getGridX(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I
    .locals 3
    .param p0, "info"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .param p1, "parent"    # Z

    .line 585
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    .line 586
    .local v0, "containerInfo":Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->FOLDER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    if-ne v1, v2, :cond_1

    .line 587
    if-eqz p1, :cond_0

    .line 588
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getGridX()I

    move-result v1

    return v1

    .line 590
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getGridX()I

    move-result v1

    return v1

    .line 592
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->EXTENDED_CONTAINERS:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    if-ne v1, v2, :cond_2

    .line 593
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getExtendedContainers()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object v1

    .line 594
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getDeviceSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->getGridX()I

    move-result v1

    .line 593
    return v1

    .line 596
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getGridX()I

    move-result v1

    return v1
.end method

.method private static getGridY(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .param p1, "parent"    # Z

    .line 601
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->FOLDER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    if-ne v0, v1, :cond_1

    .line 602
    if-eqz p1, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getGridY()I

    move-result v0

    return v0

    .line 605
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getGridY()I

    move-result v0

    return v0

    .line 608
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getGridY()I

    move-result v0

    return v0
.end method

.method private static getHierarchy(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 647
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v0, :cond_0

    .line 648
    const/4 v0, 0x0

    return v0

    .line 650
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->FOLDER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    if-ne v0, v1, :cond_1

    .line 651
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->getNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    return v0

    .line 653
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SEARCH_RESULT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    if-ne v0, v1, :cond_2

    .line 654
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    move-result-object v0

    .line 655
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->getNumber()I

    move-result v0

    add-int/lit16 v0, v0, 0xc8

    .line 654
    return v0

    .line 656
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->EXTENDED_CONTAINERS:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    if-ne v0, v1, :cond_3

    .line 657
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getExtendedContainers()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;->getNumber()I

    move-result v0

    add-int/lit16 v0, v0, 0x12c

    return v0

    .line 659
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ALL_APPS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    if-ne v0, v1, :cond_4

    .line 660
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->getNumber()I

    move-result v0

    add-int/lit16 v0, v0, 0x190

    .line 660
    return v0

    .line 663
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->getNumber()I

    move-result v0

    return v0
.end method

.method private static getPackageName(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 549
    sget-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase:[I

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 561
    const/4 v0, 0x0

    return-object v0

    .line 559
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getSearchActionItem()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 557
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getTask()Lcom/android/launcher3/logger/LauncherAtom$Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 555
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 553
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getShortcut()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getShortcutName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 551
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getApplication()Lcom/android/launcher3/logger/LauncherAtom$Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getPageId(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 613
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getTask()Lcom/android/launcher3/logger/LauncherAtom$Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getIndex()I

    move-result v0

    return v0

    .line 616
    :cond_0
    sget-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 626
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getPageIndex()I

    move-result v0

    return v0

    .line 620
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getIndex()I

    move-result v0

    return v0

    .line 618
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getPageIndex()I

    move-result v0

    return v0

    .line 624
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getTaskBarContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getIndex()I

    move-result v0

    return v0

    .line 622
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getPredictedHotseatContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->getIndex()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getParentPageId(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 631
    sget-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 642
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getPageIndex()I

    move-result v0

    return v0

    .line 633
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    if-ne v0, v1, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getIndex()I

    move-result v0

    return v0

    .line 637
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getPageIndex()I

    move-result v0

    return v0

    .line 639
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getPageIndex()I

    move-result v0

    .line 639
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getSearchAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I
    .locals 4
    .param p0, "info"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 690
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 691
    return v1

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    .line 694
    .local v0, "containerInfo":Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->EXTENDED_CONTAINERS:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    if-ne v2, v3, :cond_1

    .line 695
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getExtendedContainers()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;->DEVICE_SEARCH_RESULT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;

    if-ne v2, v3, :cond_1

    .line 697
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getExtendedContainers()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object v2

    .line 698
    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getDeviceSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->hasSearchAttributes()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 700
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getExtendedContainers()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object v1

    .line 701
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getDeviceSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->getSearchAttributes()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    move-result-object v1

    .line 700
    invoke-static {v1}, Lcom/android/quickstep/logging/StatsLogCompatManager;->searchAttributesToInt(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;)I

    move-result v1

    return v1

    .line 703
    :cond_1
    return v1
.end method

.method private static getStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 668
    packed-switch p0, :pswitch_data_0

    .line 678
    const-string v0, "INVALID"

    return-object v0

    .line 676
    :pswitch_0
    const-string v0, "ALLAPPS"

    return-object v0

    .line 674
    :pswitch_1
    const-string v0, "OVERVIEW"

    return-object v0

    .line 672
    :pswitch_2
    const-string v0, "HOME"

    return-object v0

    .line 670
    :pswitch_3
    const-string v0, "BACKGROUND"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static searchAttributesToInt(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;)I
    .locals 3
    .param p0, "searchAttributes"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    .line 707
    const/4 v0, 0x0

    .line 708
    .local v0, "response":I
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;->getCorrectedQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    or-int/lit8 v0, v0, 0x1

    .line 711
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;->getDirectMatch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    or-int/lit8 v0, v0, 0x2

    .line 714
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;->getEntryState()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->ALL_APPS:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    if-ne v1, v2, :cond_2

    .line 715
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;->getEntryState()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->QSB:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    if-ne v1, v2, :cond_3

    .line 717
    or-int/lit8 v0, v0, 0x8

    .line 720
    :cond_3
    :goto_0
    return v0
.end method

.method public static writeSnapshot(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 25
    .param p0, "info"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .param p1, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 130
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/quickstep/logging/StatsLogCompatManager;->IS_VERBOSE:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 131
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/logging/InstanceId;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object v0, v1, v2

    const-string v4, "\nwriteSnapshot(%d):\n%s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "StatsLog"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    const/16 v4, 0x106

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WORKSPACE_SNAPSHOT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 137
    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->getId()I

    move-result v5

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->getNumber()I

    move-result v6

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/logging/InstanceId;->getId()I

    move-result v7

    const/4 v8, 0x0

    .line 141
    invoke-static/range {p0 .. p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getPackageName(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/String;

    move-result-object v9

    .line 142
    invoke-static/range {p0 .. p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getComponentName(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/String;

    move-result-object v10

    .line 143
    invoke-static {v0, v3}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getGridX(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result v11

    .line 144
    invoke-static {v0, v3}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getGridY(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result v12

    .line 145
    invoke-static/range {p0 .. p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getPageId(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v13

    .line 146
    invoke-static {v0, v2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getGridX(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result v14

    .line 147
    invoke-static {v0, v2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getGridY(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result v15

    .line 148
    invoke-static/range {p0 .. p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getParentPageId(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v16

    .line 149
    invoke-static/range {p0 .. p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getHierarchy(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v17

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getIsWork()Z

    move-result v18

    const/16 v19, 0x0

    .line 152
    invoke-static/range {p0 .. p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getCardinality(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v20

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getSpanX()I

    move-result v21

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getSpanY()I

    move-result v22

    .line 155
    invoke-static/range {p0 .. p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getFeatures(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v23

    .line 156
    invoke-static/range {p0 .. p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->getAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)[B

    move-result-object v24

    .line 136
    invoke-static/range {v4 .. v24}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIIIIIIZIIIII[B)V

    .line 158
    return-void

    .line 134
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected createLatencyLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 3

    .line 122
    new-instance v0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;

    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;-><init>(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;)V

    return-object v0
.end method

.method protected createLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 3

    .line 117
    new-instance v0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;

    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;-><init>(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;)V

    return-object v0
.end method
