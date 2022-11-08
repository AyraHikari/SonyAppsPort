.class public final Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$ContainerInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;",
        "Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$ContainerInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4359
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4360
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    .line 4562
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4563
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mclearAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 4564
    return-object p0
.end method

.method public clearContainer()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    .line 4369
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4370
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mclearContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 4371
    return-object p0
.end method

.method public clearExtendedContainers()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    .line 5042
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 5043
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mclearExtendedContainers(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 5044
    return-object p0
.end method

.method public clearFolder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    .line 4514
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4515
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mclearFolder(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 4516
    return-object p0
.end method

.method public clearHotseat()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    .line 4466
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4467
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mclearHotseat(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 4468
    return-object p0
.end method

.method public clearPredictedHotseatContainer()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    .line 4850
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4851
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mclearPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 4852
    return-object p0
.end method

.method public clearPredictionContainer()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    .line 4658
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4659
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mclearPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 4660
    return-object p0
.end method

.method public clearSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    .line 4706
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4707
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mclearSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 4708
    return-object p0
.end method

.method public clearSettingsContainer()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    .line 4802
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4803
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mclearSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 4804
    return-object p0
.end method

.method public clearShortcutsContainer()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    .line 4754
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4755
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mclearShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 4756
    return-object p0
.end method

.method public clearTaskBarContainer()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    .line 4946
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4947
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mclearTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 4948
    return-object p0
.end method

.method public clearTaskSwitcherContainer()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    .line 4898
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4899
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mclearTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 4900
    return-object p0
.end method

.method public clearWallpapersContainer()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    .line 4994
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4995
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mclearWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 4996
    return-object p0
.end method

.method public clearWidgetsContainer()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    .line 4610
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4611
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mclearWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 4612
    return-object p0
.end method

.method public clearWorkspace()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    .line 4418
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4419
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mclearWorkspace(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    .line 4420
    return-object p0
.end method

.method public getAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1

    .line 4531
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object v0

    return-object v0
.end method

.method public getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;
    .locals 1

    .line 4365
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedContainers()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1

    .line 5011
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getExtendedContainers()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object v0

    return-object v0
.end method

.method public getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1

    .line 4483
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v0

    return-object v0
.end method

.method public getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 1

    .line 4435
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object v0

    return-object v0
.end method

.method public getPredictedHotseatContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 1

    .line 4819
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getPredictedHotseatContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    move-result-object v0

    return-object v0
.end method

.method public getPredictionContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 1

    .line 4627
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getPredictionContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    move-result-object v0

    return-object v0
.end method

.method public getSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1

    .line 4675
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsContainer()Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;
    .locals 1

    .line 4771
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getSettingsContainer()Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutsContainer()Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    .locals 1

    .line 4723
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getShortcutsContainer()Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    move-result-object v0

    return-object v0
.end method

.method public getTaskBarContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1

    .line 4915
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getTaskBarContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v0

    return-object v0
.end method

.method public getTaskSwitcherContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 1

    .line 4867
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getTaskSwitcherContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    move-result-object v0

    return-object v0
.end method

.method public getWallpapersContainer()Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    .locals 1

    .line 4963
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getWallpapersContainer()Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetsContainer()Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;
    .locals 1

    .line 4579
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getWidgetsContainer()Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1

    .line 4387
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v0

    return-object v0
.end method

.method public hasAllAppsContainer()Z
    .locals 1

    .line 4524
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasAllAppsContainer()Z

    move-result v0

    return v0
.end method

.method public hasExtendedContainers()Z
    .locals 1

    .line 5004
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasExtendedContainers()Z

    move-result v0

    return v0
.end method

.method public hasFolder()Z
    .locals 1

    .line 4476
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasFolder()Z

    move-result v0

    return v0
.end method

.method public hasHotseat()Z
    .locals 1

    .line 4428
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasHotseat()Z

    move-result v0

    return v0
.end method

.method public hasPredictedHotseatContainer()Z
    .locals 1

    .line 4812
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasPredictedHotseatContainer()Z

    move-result v0

    return v0
.end method

.method public hasPredictionContainer()Z
    .locals 1

    .line 4620
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasPredictionContainer()Z

    move-result v0

    return v0
.end method

.method public hasSearchResultContainer()Z
    .locals 1

    .line 4668
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasSearchResultContainer()Z

    move-result v0

    return v0
.end method

.method public hasSettingsContainer()Z
    .locals 1

    .line 4764
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasSettingsContainer()Z

    move-result v0

    return v0
.end method

.method public hasShortcutsContainer()Z
    .locals 1

    .line 4716
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasShortcutsContainer()Z

    move-result v0

    return v0
.end method

.method public hasTaskBarContainer()Z
    .locals 1

    .line 4908
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasTaskBarContainer()Z

    move-result v0

    return v0
.end method

.method public hasTaskSwitcherContainer()Z
    .locals 1

    .line 4860
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasTaskSwitcherContainer()Z

    move-result v0

    return v0
.end method

.method public hasWallpapersContainer()Z
    .locals 1

    .line 4956
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasWallpapersContainer()Z

    move-result v0

    return v0
.end method

.method public hasWidgetsContainer()Z
    .locals 1

    .line 4572
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasWidgetsContainer()Z

    move-result v0

    return v0
.end method

.method public hasWorkspace()Z
    .locals 1

    .line 4380
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasWorkspace()Z

    move-result v0

    return v0
.end method

.method public mergeAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    .line 4554
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4555
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mmergeAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    .line 4556
    return-object p0
.end method

.method public mergeExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    .line 5034
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 5035
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mmergeExtendedContainers(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V

    .line 5036
    return-object p0
.end method

.method public mergeFolder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    .line 4506
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4507
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mmergeFolder(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V

    .line 4508
    return-object p0
.end method

.method public mergeHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    .line 4458
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4459
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mmergeHotseat(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V

    .line 4460
    return-object p0
.end method

.method public mergePredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    .line 4842
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4843
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mmergePredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)V

    .line 4844
    return-object p0
.end method

.method public mergePredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    .line 4650
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4651
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mmergePredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)V

    .line 4652
    return-object p0
.end method

.method public mergeSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    .line 4698
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4699
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mmergeSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V

    .line 4700
    return-object p0
.end method

.method public mergeSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    .line 4794
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4795
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mmergeSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)V

    .line 4796
    return-object p0
.end method

.method public mergeShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    .line 4746
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4747
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mmergeShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)V

    .line 4748
    return-object p0
.end method

.method public mergeTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 4938
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4939
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mmergeTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 4940
    return-object p0
.end method

.method public mergeTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    .line 4890
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4891
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mmergeTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)V

    .line 4892
    return-object p0
.end method

.method public mergeWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    .line 4986
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4987
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mmergeWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)V

    .line 4988
    return-object p0
.end method

.method public mergeWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    .line 4602
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4603
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mmergeWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)V

    .line 4604
    return-object p0
.end method

.method public mergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    .line 4410
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4411
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$mmergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    .line 4412
    return-object p0
.end method

.method public setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    .line 4546
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4547
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)V

    .line 4548
    return-object p0
.end method

.method public setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    .line 4537
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4538
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    .line 4539
    return-object p0
.end method

.method public setExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;

    .line 5026
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 5027
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetExtendedContainers(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;)V

    .line 5028
    return-object p0
.end method

.method public setExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    .line 5017
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 5018
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetExtendedContainers(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V

    .line 5019
    return-object p0
.end method

.method public setFolder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    .line 4498
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4499
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetFolder(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;)V

    .line 4500
    return-object p0
.end method

.method public setFolder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    .line 4489
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4490
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetFolder(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V

    .line 4491
    return-object p0
.end method

.method public setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    .line 4450
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4451
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetHotseat(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)V

    .line 4452
    return-object p0
.end method

.method public setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    .line 4441
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4442
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetHotseat(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V

    .line 4443
    return-object p0
.end method

.method public setPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;

    .line 4834
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4835
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;)V

    .line 4836
    return-object p0
.end method

.method public setPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    .line 4825
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4826
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)V

    .line 4827
    return-object p0
.end method

.method public setPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;

    .line 4642
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4643
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;)V

    .line 4644
    return-object p0
.end method

.method public setPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    .line 4633
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4634
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)V

    .line 4635
    return-object p0
.end method

.method public setSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;

    .line 4690
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4691
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;)V

    .line 4692
    return-object p0
.end method

.method public setSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    .line 4681
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4682
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V

    .line 4683
    return-object p0
.end method

.method public setSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer$Builder;

    .line 4786
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4787
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer$Builder;)V

    .line 4788
    return-object p0
.end method

.method public setSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    .line 4777
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4778
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)V

    .line 4779
    return-object p0
.end method

.method public setShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;

    .line 4738
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4739
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;)V

    .line 4740
    return-object p0
.end method

.method public setShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    .line 4729
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4730
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)V

    .line 4731
    return-object p0
.end method

.method public setTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    .line 4930
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4931
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V

    .line 4932
    return-object p0
.end method

.method public setTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 4921
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4922
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 4923
    return-object p0
.end method

.method public setTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;

    .line 4882
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4883
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;)V

    .line 4884
    return-object p0
.end method

.method public setTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    .line 4873
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4874
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)V

    .line 4875
    return-object p0
.end method

.method public setWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;

    .line 4978
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4979
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;)V

    .line 4980
    return-object p0
.end method

.method public setWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    .line 4969
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4970
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)V

    .line 4971
    return-object p0
.end method

.method public setWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer$Builder;

    .line 4594
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4595
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer$Builder;)V

    .line 4596
    return-object p0
.end method

.method public setWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    .line 4585
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4586
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)V

    .line 4587
    return-object p0
.end method

.method public setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    .line 4402
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4403
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetWorkspace(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V

    .line 4404
    return-object p0
.end method

.method public setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    .line 4393
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->copyOnWrite()V

    .line 4394
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->-$$Nest$msetWorkspace(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    .line 4395
    return-object p0
.end method
