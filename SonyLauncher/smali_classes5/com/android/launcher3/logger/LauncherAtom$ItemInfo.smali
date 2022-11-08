.class public final Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$ItemInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;,
        Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;",
        "Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$ItemInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final APPLICATION_FIELD_NUMBER:I = 0x1

.field public static final CONTAINER_INFO_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

.field public static final FOLDER_ICON_FIELD_NUMBER:I = 0x9

.field public static final IS_WORK_FIELD_NUMBER:I = 0x6

.field public static final ITEM_ATTRIBUTES_FIELD_NUMBER:I = 0xc

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final RANK_FIELD_NUMBER:I = 0x5

.field public static final SEARCH_ACTION_ITEM_FIELD_NUMBER:I = 0xb

.field public static final SHORTCUT_FIELD_NUMBER:I = 0x3

.field public static final SLICE_FIELD_NUMBER:I = 0xa

.field public static final TASK_FIELD_NUMBER:I = 0x2

.field public static final WIDGET_FIELD_NUMBER:I = 0x4

.field private static final itemAttributes_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/logger/LauncherAtom$Attribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

.field private isWork_:Z

.field private itemAttributes_:Lcom/google/protobuf/Internal$IntList;

.field private itemCase_:I

.field private item_:Ljava/lang/Object;

.field private rank_:I


# direct methods
.method static bridge synthetic -$$Nest$maddAllItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->addAllItemAttributes(Ljava/lang/Iterable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Attribute;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->addItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$Attribute;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearApplication(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->clearApplication()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->clearContainerInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->clearFolderIcon()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearIsWork(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->clearIsWork()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->clearItem()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->clearItemAttributes()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearRank(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->clearRank()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->clearSearchActionItem()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearShortcut(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->clearShortcut()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearSlice(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->clearSlice()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearTask(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->clearTask()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearWidget(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->clearWidget()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeApplication(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Application;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->mergeApplication(Lcom/android/launcher3/logger/LauncherAtom$Application;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->mergeContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->mergeFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->mergeSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeShortcut(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->mergeShortcut(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeSlice(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Slice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->mergeSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeTask(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->mergeTask(Lcom/android/launcher3/logger/LauncherAtom$Task;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeWidget(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Widget;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->mergeWidget(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetApplication(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setApplication(Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetApplication(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Application;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setApplication(Lcom/android/launcher3/logger/LauncherAtom$Application;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetIsWork(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setIsWork(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;ILcom/android/launcher3/logger/LauncherAtom$Attribute;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setItemAttributes(ILcom/android/launcher3/logger/LauncherAtom$Attribute;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRank(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setRank(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetShortcut(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setShortcut(Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetShortcut(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setShortcut(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSlice(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSlice(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Slice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTask(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setTask(Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTask(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setTask(Lcom/android/launcher3/logger/LauncherAtom$Task;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWidget(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setWidget(Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWidget(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Widget;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setWidget(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1891
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$1;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 2760
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;-><init>()V

    .line 2763
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 2764
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2766
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1219
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1223
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1220
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    .line 1221
    return-void
.end method

.method private addAllItemAttributes(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/launcher3/logger/LauncherAtom$Attribute;",
            ">;)V"
        }
    .end annotation

    .line 1978
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/android/launcher3/logger/LauncherAtom$Attribute;>;"
    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->ensureItemAttributesIsMutable()V

    .line 1979
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    .line 1980
    .local v1, "value":Lcom/android/launcher3/logger/LauncherAtom$Attribute;
    iget-object v2, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->getNumber()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 1981
    .end local v1    # "value":Lcom/android/launcher3/logger/LauncherAtom$Attribute;
    goto :goto_0

    .line 1982
    :cond_0
    return-void
.end method

.method private addItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$Attribute;)V
    .locals 2
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    .line 1963
    if-eqz p1, :cond_0

    .line 1966
    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->ensureItemAttributesIsMutable()V

    .line 1967
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->getNumber()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 1968
    return-void

    .line 1964
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearApplication()V
    .locals 2

    .line 1334
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1335
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1338
    :cond_0
    return-void
.end method

.method private clearContainerInfo()V
    .locals 1

    .line 1884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 1885
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    .line 1886
    return-void
.end method

.method private clearFolderIcon()V
    .locals 2

    .line 1582
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1583
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1586
    :cond_0
    return-void
.end method

.method private clearIsWork()V
    .locals 1

    .line 1802
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    .line 1803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isWork_:Z

    .line 1804
    return-void
.end method

.method private clearItem()V
    .locals 1

    .line 1274
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1276
    return-void
.end method

.method private clearItemAttributes()V
    .locals 1

    .line 1991
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    .line 1992
    return-void
.end method

.method private clearRank()V
    .locals 1

    .line 1755
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    .line 1756
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->rank_:I

    .line 1757
    return-void
.end method

.method private clearSearchActionItem()V
    .locals 2

    .line 1706
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1707
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1710
    :cond_0
    return-void
.end method

.method private clearShortcut()V
    .locals 2

    .line 1458
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1459
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1462
    :cond_0
    return-void
.end method

.method private clearSlice()V
    .locals 2

    .line 1644
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1645
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1648
    :cond_0
    return-void
.end method

.method private clearTask()V
    .locals 2

    .line 1396
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1397
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1400
    :cond_0
    return-void
.end method

.method private clearWidget()V
    .locals 2

    .line 1520
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1521
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1524
    :cond_0
    return-void
.end method

.method private ensureItemAttributesIsMutable()V
    .locals 1

    .line 1935
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    .line 1937
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    .line 1939
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1

    .line 2769
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method private mergeApplication(Lcom/android/launcher3/logger/LauncherAtom$Application;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Application;

    .line 1318
    if-eqz p1, :cond_1

    .line 1321
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1322
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Application;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$Application;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    move-result-object v0

    .line 1324
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    goto :goto_0

    .line 1326
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1328
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1329
    return-void

    .line 1319
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 2
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 1865
    if-eqz p1, :cond_1

    .line 1868
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    if-eqz v0, :cond_0

    .line 1869
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 1871
    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    goto :goto_0

    .line 1873
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 1875
    :goto_0
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    .line 1876
    return-void

    .line 1866
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    .line 1566
    if-eqz p1, :cond_1

    .line 1569
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1570
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1571
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    move-result-object v0

    .line 1572
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    goto :goto_0

    .line 1574
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1576
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1577
    return-void

    .line 1567
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    .line 1690
    if-eqz p1, :cond_1

    .line 1693
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1694
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    move-result-object v0

    .line 1696
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    goto :goto_0

    .line 1698
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1700
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1701
    return-void

    .line 1691
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeShortcut(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    .line 1442
    if-eqz p1, :cond_1

    .line 1445
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1446
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object v0

    .line 1448
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    goto :goto_0

    .line 1450
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1452
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1453
    return-void

    .line 1443
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Slice;

    .line 1628
    if-eqz p1, :cond_1

    .line 1631
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1632
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Slice;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$Slice;)Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;

    move-result-object v0

    .line 1634
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    goto :goto_0

    .line 1636
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1638
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1639
    return-void

    .line 1629
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeTask(Lcom/android/launcher3/logger/LauncherAtom$Task;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Task;

    .line 1380
    if-eqz p1, :cond_1

    .line 1383
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1384
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Task;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$Task;)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    move-result-object v0

    .line 1386
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    goto :goto_0

    .line 1388
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1390
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1391
    return-void

    .line 1381
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeWidget(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Widget;

    .line 1504
    if-eqz p1, :cond_1

    .line 1507
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1508
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$Widget;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    move-result-object v0

    .line 1510
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    goto :goto_0

    .line 1512
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1514
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1515
    return-void

    .line 1505
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    .line 2069
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 2072
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2046
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2052
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2010
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2017
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2057
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2064
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2034
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2041
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1997
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2004
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2022
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2029
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;",
            ">;"
        }
    .end annotation

    .line 2775
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setApplication(Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    .line 1311
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1312
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1313
    return-void
.end method

.method private setApplication(Lcom/android/launcher3/logger/LauncherAtom$Application;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Application;

    .line 1300
    if-eqz p1, :cond_0

    .line 1303
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1304
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1305
    return-void

    .line 1301
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    .line 1853
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 1854
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    .line 1855
    return-void
.end method

.method private setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 1838
    if-eqz p1, :cond_0

    .line 1841
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 1842
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    .line 1843
    return-void

    .line 1839
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    .line 1559
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1560
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1561
    return-void
.end method

.method private setFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    .line 1548
    if-eqz p1, :cond_0

    .line 1551
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1552
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1553
    return-void

    .line 1549
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setIsWork(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1791
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    .line 1792
    iput-boolean p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isWork_:Z

    .line 1793
    return-void
.end method

.method private setItemAttributes(ILcom/android/launcher3/logger/LauncherAtom$Attribute;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    .line 1949
    if-eqz p2, :cond_0

    .line 1952
    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->ensureItemAttributesIsMutable()V

    .line 1953
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->getNumber()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 1954
    return-void

    .line 1950
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setRank(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1744
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    .line 1745
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->rank_:I

    .line 1746
    return-void
.end method

.method private setSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    .line 1683
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1684
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1685
    return-void
.end method

.method private setSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    .line 1672
    if-eqz p1, :cond_0

    .line 1675
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1676
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1677
    return-void

    .line 1673
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setShortcut(Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    .line 1435
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1436
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1437
    return-void
.end method

.method private setShortcut(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    .line 1424
    if-eqz p1, :cond_0

    .line 1427
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1428
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1429
    return-void

    .line 1425
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;

    .line 1621
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1622
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1623
    return-void
.end method

.method private setSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Slice;

    .line 1610
    if-eqz p1, :cond_0

    .line 1613
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1614
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1615
    return-void

    .line 1611
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setTask(Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    .line 1373
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1374
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1375
    return-void
.end method

.method private setTask(Lcom/android/launcher3/logger/LauncherAtom$Task;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Task;

    .line 1362
    if-eqz p1, :cond_0

    .line 1365
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1366
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1367
    return-void

    .line 1363
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setWidget(Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    .line 1497
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1498
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1499
    return-void
.end method

.method private setWidget(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Widget;

    .line 1486
    if-eqz p1, :cond_0

    .line 1489
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    .line 1490
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    .line 1491
    return-void

    .line 1487
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 2696
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2753
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2750
    :pswitch_0
    return-object v2

    .line 2747
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 2732
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2733
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;>;"
    if-nez v0, :cond_1

    .line 2734
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    monitor-enter v1

    .line 2735
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 2736
    if-nez v0, :cond_0

    .line 2737
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 2740
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2742
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2744
    :cond_1
    :goto_0
    return-object v0

    .line 2729
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0

    .line 2704
    :pswitch_4
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "item_"

    aput-object v3, v0, v2

    const-string v2, "itemCase_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bitField0_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$Application;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$Task;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rank_"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "isWork_"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "containerInfo_"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "itemAttributes_"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 2719
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2721
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u000b\u0001\u0001\u0001\u000c\u000b\u0000\u0001\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005\u0004\u0007\u0006\u0007\u0008\u0007\t\t\t<\u0000\n<\u0000\u000b<\u0000\u000c\u001e"

    .line 2725
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 2701
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder-IA;)V

    return-object v0

    .line 2698
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getApplication()Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 2

    .line 1291
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object v0

    .line 1294
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Application;

    move-result-object v0

    return-object v0
.end method

.method public getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1

    .line 1828
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 2

    .line 1539
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object v0

    .line 1542
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v0

    return-object v0
.end method

.method public getIsWork()Z
    .locals 1

    .line 1781
    iget-boolean v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isWork_:Z

    return v0
.end method

.method public getItemAttributes(I)Lcom/android/launcher3/logger/LauncherAtom$Attribute;
    .locals 2
    .param p1, "index"    # I

    .line 1932
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    return-object v0
.end method

.method public getItemAttributesCount()I
    .locals 1

    .line 1921
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getItemAttributesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/logger/LauncherAtom$Attribute;",
            ">;"
        }
    .end annotation

    .line 1909
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/Internal$IntList;

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;
    .locals 1

    .line 1269
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object v0

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .line 1734
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->rank_:I

    return v0
.end method

.method public getSearchActionItem()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 2

    .line 1663
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0

    .line 1666
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    move-result-object v0

    return-object v0
.end method

.method public getShortcut()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 2

    .line 1415
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object v0

    .line 1418
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    move-result-object v0

    return-object v0
.end method

.method public getSlice()Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 2

    .line 1601
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object v0

    .line 1604
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Slice;

    move-result-object v0

    return-object v0
.end method

.method public getTask()Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 2

    .line 1353
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object v0

    .line 1356
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Task;

    move-result-object v0

    return-object v0
.end method

.method public getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 2

    .line 1477
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object v0

    .line 1480
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v0

    return-object v0
.end method

.method public hasApplication()Z
    .locals 2

    .line 1284
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasContainerInfo()Z
    .locals 1

    .line 1817
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFolderIcon()Z
    .locals 2

    .line 1532
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIsWork()Z
    .locals 1

    .line 1770
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRank()Z
    .locals 1

    .line 1723
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSearchActionItem()Z
    .locals 2

    .line 1656
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasShortcut()Z
    .locals 2

    .line 1408
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSlice()Z
    .locals 2

    .line 1594
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTask()Z
    .locals 2

    .line 1346
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWidget()Z
    .locals 2

    .line 1470
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
