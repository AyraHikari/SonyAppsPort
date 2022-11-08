.class public final Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6428
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6429
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1

    .line 6582
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6583
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$mclearAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V

    .line 6584
    return-object p0
.end method

.method public clearParentContainer()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1

    .line 6438
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6439
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$mclearParentContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V

    .line 6440
    return-object p0
.end method

.method public clearQueryLength()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1

    .line 6486
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6487
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$mclearQueryLength(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V

    .line 6488
    return-object p0
.end method

.method public clearWorkspace()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1

    .line 6534
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6535
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$mclearWorkspace(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V

    .line 6536
    return-object p0
.end method

.method public getAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1

    .line 6551
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object v0

    return-object v0
.end method

.method public getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;
    .locals 1

    .line 6434
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public getQueryLength()I
    .locals 1

    .line 6464
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getQueryLength()I

    move-result v0

    return v0
.end method

.method public getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1

    .line 6503
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v0

    return-object v0
.end method

.method public hasAllAppsContainer()Z
    .locals 1

    .line 6544
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->hasAllAppsContainer()Z

    move-result v0

    return v0
.end method

.method public hasQueryLength()Z
    .locals 1

    .line 6453
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->hasQueryLength()Z

    move-result v0

    return v0
.end method

.method public hasWorkspace()Z
    .locals 1

    .line 6496
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->hasWorkspace()Z

    move-result v0

    return v0
.end method

.method public mergeAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    .line 6574
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6575
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$mmergeAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    .line 6576
    return-object p0
.end method

.method public mergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    .line 6526
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6527
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$mmergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    .line 6528
    return-object p0
.end method

.method public setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    .line 6566
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6567
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$msetAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)V

    .line 6568
    return-object p0
.end method

.method public setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    .line 6557
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6558
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$msetAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    .line 6559
    return-object p0
.end method

.method public setQueryLength(I)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 6474
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6475
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$msetQueryLength(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;I)V

    .line 6476
    return-object p0
.end method

.method public setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    .line 6518
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6519
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$msetWorkspace(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V

    .line 6520
    return-object p0
.end method

.method public setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    .line 6509
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6510
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$msetWorkspace(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    .line 6511
    return-object p0
.end method
