.class public final Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$ItemInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;",
        "Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$ItemInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2089
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2090
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllItemAttributes(Ljava/lang/Iterable;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/launcher3/logger/LauncherAtom$Attribute;",
            ">;)",
            "Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;"
        }
    .end annotation

    .line 2673
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/android/launcher3/logger/LauncherAtom$Attribute;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2674
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$maddAllItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$Attribute;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    .line 2660
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2661
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$maddItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Attribute;)V

    .line 2662
    return-object p0
.end method

.method public clearApplication()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    .line 2148
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2149
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mclearApplication(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    .line 2150
    return-object p0
.end method

.method public clearContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    .line 2601
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2602
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mclearContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    .line 2603
    return-object p0
.end method

.method public clearFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    .line 2340
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2341
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mclearFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    .line 2342
    return-object p0
.end method

.method public clearIsWork()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    .line 2530
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2531
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mclearIsWork(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    .line 2532
    return-object p0
.end method

.method public clearItem()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    .line 2099
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2100
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mclearItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    .line 2101
    return-object p0
.end method

.method public clearItemAttributes()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    .line 2684
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2685
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mclearItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    .line 2686
    return-object p0
.end method

.method public clearRank()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    .line 2483
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2484
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mclearRank(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    .line 2485
    return-object p0
.end method

.method public clearSearchActionItem()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    .line 2436
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2437
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mclearSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    .line 2438
    return-object p0
.end method

.method public clearShortcut()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    .line 2244
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2245
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mclearShortcut(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    .line 2246
    return-object p0
.end method

.method public clearSlice()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    .line 2388
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2389
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mclearSlice(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    .line 2390
    return-object p0
.end method

.method public clearTask()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    .line 2196
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2197
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mclearTask(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    .line 2198
    return-object p0
.end method

.method public clearWidget()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    .line 2292
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2293
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mclearWidget(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    .line 2294
    return-object p0
.end method

.method public getApplication()Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 1

    .line 2117
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getApplication()Lcom/android/launcher3/logger/LauncherAtom$Application;

    move-result-object v0

    return-object v0
.end method

.method public getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1

    .line 2555
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 1

    .line 2309
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v0

    return-object v0
.end method

.method public getIsWork()Z
    .locals 1

    .line 2508
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getIsWork()Z

    move-result v0

    return v0
.end method

.method public getItemAttributes(I)Lcom/android/launcher3/logger/LauncherAtom$Attribute;
    .locals 1
    .param p1, "index"    # I

    .line 2637
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemAttributes(I)Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getItemAttributesCount()I
    .locals 1

    .line 2626
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemAttributesCount()I

    move-result v0

    return v0
.end method

.method public getItemAttributesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/logger/LauncherAtom$Attribute;",
            ">;"
        }
    .end annotation

    .line 2615
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemAttributesList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;
    .locals 1

    .line 2095
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object v0

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .line 2461
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getRank()I

    move-result v0

    return v0
.end method

.method public getSearchActionItem()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1

    .line 2405
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getSearchActionItem()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    move-result-object v0

    return-object v0
.end method

.method public getShortcut()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 1

    .line 2213
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getShortcut()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    move-result-object v0

    return-object v0
.end method

.method public getSlice()Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 1

    .line 2357
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getSlice()Lcom/android/launcher3/logger/LauncherAtom$Slice;

    move-result-object v0

    return-object v0
.end method

.method public getTask()Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 1

    .line 2165
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getTask()Lcom/android/launcher3/logger/LauncherAtom$Task;

    move-result-object v0

    return-object v0
.end method

.method public getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 1

    .line 2261
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v0

    return-object v0
.end method

.method public hasApplication()Z
    .locals 1

    .line 2110
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasApplication()Z

    move-result v0

    return v0
.end method

.method public hasContainerInfo()Z
    .locals 1

    .line 2544
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasContainerInfo()Z

    move-result v0

    return v0
.end method

.method public hasFolderIcon()Z
    .locals 1

    .line 2302
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasFolderIcon()Z

    move-result v0

    return v0
.end method

.method public hasIsWork()Z
    .locals 1

    .line 2497
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasIsWork()Z

    move-result v0

    return v0
.end method

.method public hasRank()Z
    .locals 1

    .line 2450
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasRank()Z

    move-result v0

    return v0
.end method

.method public hasSearchActionItem()Z
    .locals 1

    .line 2398
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasSearchActionItem()Z

    move-result v0

    return v0
.end method

.method public hasShortcut()Z
    .locals 1

    .line 2206
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasShortcut()Z

    move-result v0

    return v0
.end method

.method public hasSlice()Z
    .locals 1

    .line 2350
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasSlice()Z

    move-result v0

    return v0
.end method

.method public hasTask()Z
    .locals 1

    .line 2158
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasTask()Z

    move-result v0

    return v0
.end method

.method public hasWidget()Z
    .locals 1

    .line 2254
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasWidget()Z

    move-result v0

    return v0
.end method

.method public mergeApplication(Lcom/android/launcher3/logger/LauncherAtom$Application;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Application;

    .line 2140
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2141
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mmergeApplication(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Application;)V

    .line 2142
    return-object p0
.end method

.method public mergeContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 2590
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2591
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mmergeContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 2592
    return-object p0
.end method

.method public mergeFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    .line 2332
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2333
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mmergeFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V

    .line 2334
    return-object p0
.end method

.method public mergeSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    .line 2428
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2429
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mmergeSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)V

    .line 2430
    return-object p0
.end method

.method public mergeShortcut(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    .line 2236
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2237
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mmergeShortcut(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)V

    .line 2238
    return-object p0
.end method

.method public mergeSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Slice;

    .line 2380
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2381
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mmergeSlice(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Slice;)V

    .line 2382
    return-object p0
.end method

.method public mergeTask(Lcom/android/launcher3/logger/LauncherAtom$Task;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Task;

    .line 2188
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2189
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mmergeTask(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Task;)V

    .line 2190
    return-object p0
.end method

.method public mergeWidget(Lcom/android/launcher3/logger/LauncherAtom$Widget;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Widget;

    .line 2284
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2285
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$mmergeWidget(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    .line 2286
    return-object p0
.end method

.method public setApplication(Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    .line 2132
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2133
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetApplication(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;)V

    .line 2134
    return-object p0
.end method

.method public setApplication(Lcom/android/launcher3/logger/LauncherAtom$Application;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Application;

    .line 2123
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2124
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetApplication(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Application;)V

    .line 2125
    return-object p0
.end method

.method public setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    .line 2578
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2579
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)V

    .line 2580
    return-object p0
.end method

.method public setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 2565
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2566
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 2567
    return-object p0
.end method

.method public setFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    .line 2324
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2325
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)V

    .line 2326
    return-object p0
.end method

.method public setFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    .line 2315
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2316
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V

    .line 2317
    return-object p0
.end method

.method public setIsWork(Z)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 2518
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2519
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetIsWork(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)V

    .line 2520
    return-object p0
.end method

.method public setItemAttributes(ILcom/android/launcher3/logger/LauncherAtom$Attribute;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    .line 2648
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2649
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;ILcom/android/launcher3/logger/LauncherAtom$Attribute;)V

    .line 2650
    return-object p0
.end method

.method public setRank(I)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 2471
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2472
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetRank(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;I)V

    .line 2473
    return-object p0
.end method

.method public setSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    .line 2420
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2421
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;)V

    .line 2422
    return-object p0
.end method

.method public setSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    .line 2411
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2412
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)V

    .line 2413
    return-object p0
.end method

.method public setShortcut(Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    .line 2228
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2229
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetShortcut(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)V

    .line 2230
    return-object p0
.end method

.method public setShortcut(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    .line 2219
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2220
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetShortcut(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)V

    .line 2221
    return-object p0
.end method

.method public setSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;

    .line 2372
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2373
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetSlice(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;)V

    .line 2374
    return-object p0
.end method

.method public setSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Slice;

    .line 2363
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2364
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetSlice(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Slice;)V

    .line 2365
    return-object p0
.end method

.method public setTask(Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    .line 2180
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2181
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetTask(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;)V

    .line 2182
    return-object p0
.end method

.method public setTask(Lcom/android/launcher3/logger/LauncherAtom$Task;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Task;

    .line 2171
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2172
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetTask(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Task;)V

    .line 2173
    return-object p0
.end method

.method public setWidget(Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    .line 2276
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2277
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetWidget(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;)V

    .line 2278
    return-object p0
.end method

.method public setWidget(Lcom/android/launcher3/logger/LauncherAtom$Widget;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$Widget;

    .line 2267
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->copyOnWrite()V

    .line 2268
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->-$$Nest$msetWidget(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    .line 2269
    return-object p0
.end method
