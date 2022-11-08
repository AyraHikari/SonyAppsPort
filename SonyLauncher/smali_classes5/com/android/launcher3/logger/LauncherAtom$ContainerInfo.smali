.class public final Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$ContainerInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;,
        Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;",
        "Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$ContainerInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALL_APPS_CONTAINER_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

.field public static final EXTENDED_CONTAINERS_FIELD_NUMBER:I = 0x14

.field public static final FOLDER_FIELD_NUMBER:I = 0x3

.field public static final HOTSEAT_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREDICTED_HOTSEAT_CONTAINER_FIELD_NUMBER:I = 0xa

.field public static final PREDICTION_CONTAINER_FIELD_NUMBER:I = 0x6

.field public static final SEARCH_RESULT_CONTAINER_FIELD_NUMBER:I = 0x7

.field public static final SETTINGS_CONTAINER_FIELD_NUMBER:I = 0x9

.field public static final SHORTCUTS_CONTAINER_FIELD_NUMBER:I = 0x8

.field public static final TASK_BAR_CONTAINER_FIELD_NUMBER:I = 0xc

.field public static final TASK_SWITCHER_CONTAINER_FIELD_NUMBER:I = 0xb

.field public static final WALLPAPERS_CONTAINER_FIELD_NUMBER:I = 0xd

.field public static final WIDGETS_CONTAINER_FIELD_NUMBER:I = 0x5

.field public static final WORKSPACE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private containerCase_:I

.field private container_:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$mclearAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->clearAllAppsContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->clearContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearExtendedContainers(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->clearExtendedContainers()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearFolder(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->clearFolder()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearHotseat(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->clearHotseat()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->clearPredictedHotseatContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->clearPredictionContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->clearSearchResultContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->clearSettingsContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->clearShortcutsContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->clearTaskBarContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->clearTaskSwitcherContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->clearWallpapersContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->clearWidgetsContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearWorkspace(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->clearWorkspace()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->mergeAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeExtendedContainers(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->mergeExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeFolder(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->mergeFolder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeHotseat(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->mergeHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergePredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->mergePredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergePredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->mergePredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->mergeSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->mergeSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->mergeShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->mergeTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->mergeTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->mergeWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->mergeWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->mergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetExtendedContainers(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetExtendedContainers(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFolder(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setFolder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFolder(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setFolder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHotseat(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHotseat(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWorkspace(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWorkspace(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 5120
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;-><init>()V

    .line 5123
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 5124
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5126
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3324
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3327
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3325
    return-void
.end method

.method private clearAllAppsContainer()V
    .locals 2

    .line 3638
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3639
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3642
    :cond_0
    return-void
.end method

.method private clearContainer()V
    .locals 1

    .line 3392
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3394
    return-void
.end method

.method private clearExtendedContainers()V
    .locals 2

    .line 4258
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 4259
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4262
    :cond_0
    return-void
.end method

.method private clearFolder()V
    .locals 2

    .line 3576
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3577
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3580
    :cond_0
    return-void
.end method

.method private clearHotseat()V
    .locals 2

    .line 3514
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3515
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3518
    :cond_0
    return-void
.end method

.method private clearPredictedHotseatContainer()V
    .locals 2

    .line 4010
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 4011
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4012
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4014
    :cond_0
    return-void
.end method

.method private clearPredictionContainer()V
    .locals 2

    .line 3762
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 3763
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3766
    :cond_0
    return-void
.end method

.method private clearSearchResultContainer()V
    .locals 2

    .line 3824
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 3825
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3826
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3828
    :cond_0
    return-void
.end method

.method private clearSettingsContainer()V
    .locals 2

    .line 3948
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 3949
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3950
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3952
    :cond_0
    return-void
.end method

.method private clearShortcutsContainer()V
    .locals 2

    .line 3886
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 3887
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3888
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3890
    :cond_0
    return-void
.end method

.method private clearTaskBarContainer()V
    .locals 2

    .line 4134
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 4135
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4138
    :cond_0
    return-void
.end method

.method private clearTaskSwitcherContainer()V
    .locals 2

    .line 4072
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 4073
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4074
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4076
    :cond_0
    return-void
.end method

.method private clearWallpapersContainer()V
    .locals 2

    .line 4196
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 4197
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4200
    :cond_0
    return-void
.end method

.method private clearWidgetsContainer()V
    .locals 2

    .line 3700
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3701
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3704
    :cond_0
    return-void
.end method

.method private clearWorkspace()V
    .locals 2

    .line 3452
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3453
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3456
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1

    .line 5129
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method private mergeAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    .line 3622
    if-eqz p1, :cond_1

    .line 3625
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3626
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3627
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    move-result-object v0

    .line 3628
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    goto :goto_0

    .line 3630
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3632
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3633
    return-void

    .line 3623
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    .line 4242
    if-eqz p1, :cond_1

    .line 4245
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4246
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4247
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->newBuilder(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;

    move-result-object v0

    .line 4248
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    goto :goto_0

    .line 4250
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4252
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4253
    return-void

    .line 4243
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeFolder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    .line 3560
    if-eqz p1, :cond_1

    .line 3563
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3564
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3565
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    move-result-object v0

    .line 3566
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    goto :goto_0

    .line 3568
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3570
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3571
    return-void

    .line 3561
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    .line 3498
    if-eqz p1, :cond_1

    .line 3501
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3502
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3503
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    move-result-object v0

    .line 3504
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    goto :goto_0

    .line 3506
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3508
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3509
    return-void

    .line 3499
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergePredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    .line 3994
    if-eqz p1, :cond_1

    .line 3997
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3998
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3999
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;

    move-result-object v0

    .line 4000
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    goto :goto_0

    .line 4002
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4004
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4005
    return-void

    .line 3995
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergePredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    .line 3746
    if-eqz p1, :cond_1

    .line 3749
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3750
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3751
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;

    move-result-object v0

    .line 3752
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    goto :goto_0

    .line 3754
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3756
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3757
    return-void

    .line 3747
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    .line 3808
    if-eqz p1, :cond_1

    .line 3811
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3812
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3813
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;

    move-result-object v0

    .line 3814
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    goto :goto_0

    .line 3816
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3818
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3819
    return-void

    .line 3809
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    .line 3932
    if-eqz p1, :cond_1

    .line 3935
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3936
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3937
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer$Builder;

    move-result-object v0

    .line 3938
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    goto :goto_0

    .line 3940
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3942
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3943
    return-void

    .line 3933
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    .line 3870
    if-eqz p1, :cond_1

    .line 3873
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3874
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3875
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;

    move-result-object v0

    .line 3876
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    goto :goto_0

    .line 3878
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3880
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3881
    return-void

    .line 3871
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 4118
    if-eqz p1, :cond_1

    .line 4121
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4122
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4123
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    move-result-object v0

    .line 4124
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    goto :goto_0

    .line 4126
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4128
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4129
    return-void

    .line 4119
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    .line 4056
    if-eqz p1, :cond_1

    .line 4059
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4060
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4061
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;

    move-result-object v0

    .line 4062
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    goto :goto_0

    .line 4064
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4066
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4067
    return-void

    .line 4057
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    .line 4180
    if-eqz p1, :cond_1

    .line 4183
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4184
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4185
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;

    move-result-object v0

    .line 4186
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    goto :goto_0

    .line 4188
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4190
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4191
    return-void

    .line 4181
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    .line 3684
    if-eqz p1, :cond_1

    .line 3687
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3688
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3689
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer$Builder;

    move-result-object v0

    .line 3690
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    goto :goto_0

    .line 3692
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3694
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3695
    return-void

    .line 3685
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    .line 3436
    if-eqz p1, :cond_1

    .line 3439
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3440
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3441
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v0

    .line 3442
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    goto :goto_0

    .line 3444
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3446
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3447
    return-void

    .line 3437
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    .line 4339
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 4342
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4316
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4322
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4280
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4287
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4327
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4334
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4304
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4311
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4267
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4274
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4292
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4299
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;",
            ">;"
        }
    .end annotation

    .line 5135
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    .line 3615
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3616
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3617
    return-void
.end method

.method private setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    .line 3604
    if-eqz p1, :cond_0

    .line 3607
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3608
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3609
    return-void

    .line 3605
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;

    .line 4235
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4236
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4237
    return-void
.end method

.method private setExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    .line 4224
    if-eqz p1, :cond_0

    .line 4227
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4228
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4229
    return-void

    .line 4225
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setFolder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    .line 3553
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3554
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3555
    return-void
.end method

.method private setFolder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    .line 3542
    if-eqz p1, :cond_0

    .line 3545
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3546
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3547
    return-void

    .line 3543
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    .line 3491
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3492
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3493
    return-void
.end method

.method private setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    .line 3480
    if-eqz p1, :cond_0

    .line 3483
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3484
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3485
    return-void

    .line 3481
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;

    .line 3987
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3988
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3989
    return-void
.end method

.method private setPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    .line 3976
    if-eqz p1, :cond_0

    .line 3979
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3980
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3981
    return-void

    .line 3977
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;

    .line 3739
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3740
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3741
    return-void
.end method

.method private setPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    .line 3728
    if-eqz p1, :cond_0

    .line 3731
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3732
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3733
    return-void

    .line 3729
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;

    .line 3801
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3802
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3803
    return-void
.end method

.method private setSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    .line 3790
    if-eqz p1, :cond_0

    .line 3793
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3794
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3795
    return-void

    .line 3791
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer$Builder;

    .line 3925
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3926
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3927
    return-void
.end method

.method private setSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    .line 3914
    if-eqz p1, :cond_0

    .line 3917
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3918
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3919
    return-void

    .line 3915
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;

    .line 3863
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3864
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3865
    return-void
.end method

.method private setShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    .line 3852
    if-eqz p1, :cond_0

    .line 3855
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3856
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3857
    return-void

    .line 3853
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    .line 4111
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4112
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4113
    return-void
.end method

.method private setTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 4100
    if-eqz p1, :cond_0

    .line 4103
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4104
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4105
    return-void

    .line 4101
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;

    .line 4049
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4050
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4051
    return-void
.end method

.method private setTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    .line 4038
    if-eqz p1, :cond_0

    .line 4041
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4042
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4043
    return-void

    .line 4039
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;

    .line 4173
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4174
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4175
    return-void
.end method

.method private setWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    .line 4162
    if-eqz p1, :cond_0

    .line 4165
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 4166
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 4167
    return-void

    .line 4163
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer$Builder;

    .line 3677
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3678
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3679
    return-void
.end method

.method private setWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    .line 3666
    if-eqz p1, :cond_0

    .line 3669
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3670
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3671
    return-void

    .line 3667
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    .line 3429
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3430
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3431
    return-void
.end method

.method private setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    .line 3418
    if-eqz p1, :cond_0

    .line 3421
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    .line 3422
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    .line 3423
    return-void

    .line 3419
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

    .line 5054
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 5113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 5110
    :pswitch_0
    return-object v2

    .line 5107
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 5092
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 5093
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;>;"
    if-nez v0, :cond_1

    .line 5094
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    monitor-enter v1

    .line 5095
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 5096
    if-nez v0, :cond_0

    .line 5097
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 5100
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 5102
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5104
    :cond_1
    :goto_0
    return-object v0

    .line 5089
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0

    .line 5062
    :pswitch_4
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "container_"

    aput-object v3, v0, v2

    const-string v2, "containerCase_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bitField0_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    aput-object v2, v0, v1

    .line 5081
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u000e\u0001\u0001\u0001\u0014\u000e\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000\t<\u0000\n<\u0000\u000b<\u0000\u000c<\u0000\r<\u0000\u0014<\u0000"

    .line 5085
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 5059
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder-IA;)V

    return-object v0

    .line 5056
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;-><init>()V

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

.method public getAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 2

    .line 3595
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3596
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0

    .line 3598
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object v0

    return-object v0
.end method

.method public getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;
    .locals 1

    .line 3387
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedContainers()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 2

    .line 4215
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 4216
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object v0

    .line 4218
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object v0

    return-object v0
.end method

.method public getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 2

    .line 3533
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3534
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0

    .line 3536
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v0

    return-object v0
.end method

.method public getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 2

    .line 3471
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3472
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0

    .line 3474
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object v0

    return-object v0
.end method

.method public getPredictedHotseatContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 2

    .line 3967
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 3968
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object v0

    .line 3970
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    move-result-object v0

    return-object v0
.end method

.method public getPredictionContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 2

    .line 3719
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 3720
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object v0

    .line 3722
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    move-result-object v0

    return-object v0
.end method

.method public getSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 2

    .line 3781
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 3782
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0

    .line 3784
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsContainer()Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;
    .locals 2

    .line 3905
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 3906
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    return-object v0

    .line 3908
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutsContainer()Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    .locals 2

    .line 3843
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 3844
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    return-object v0

    .line 3846
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    move-result-object v0

    return-object v0
.end method

.method public getTaskBarContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 2

    .line 4091
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 4092
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0

    .line 4094
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v0

    return-object v0
.end method

.method public getTaskSwitcherContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 2

    .line 4029
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 4030
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    return-object v0

    .line 4032
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    move-result-object v0

    return-object v0
.end method

.method public getWallpapersContainer()Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    .locals 2

    .line 4153
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 4154
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    return-object v0

    .line 4156
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetsContainer()Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;
    .locals 2

    .line 3657
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3658
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    return-object v0

    .line 3660
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 2

    .line 3409
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3410
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0

    .line 3412
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v0

    return-object v0
.end method

.method public hasAllAppsContainer()Z
    .locals 2

    .line 3588
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExtendedContainers()Z
    .locals 2

    .line 4208
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFolder()Z
    .locals 2

    .line 3526
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHotseat()Z
    .locals 2

    .line 3464
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPredictedHotseatContainer()Z
    .locals 2

    .line 3960
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPredictionContainer()Z
    .locals 2

    .line 3712
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSearchResultContainer()Z
    .locals 2

    .line 3774
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSettingsContainer()Z
    .locals 2

    .line 3898
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasShortcutsContainer()Z
    .locals 2

    .line 3836
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTaskBarContainer()Z
    .locals 2

    .line 4084
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTaskSwitcherContainer()Z
    .locals 2

    .line 4022
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWallpapersContainer()Z
    .locals 2

    .line 4146
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWidgetsContainer()Z
    .locals 2

    .line 3650
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWorkspace()Z
    .locals 2

    .line 3402
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
