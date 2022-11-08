.class public abstract Lcom/android/launcher3/LauncherState;
.super Ljava/lang/Object;
.source "LauncherState.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/BaseState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherState$ScaleAndTranslation;,
        Lcom/android/launcher3/LauncherState$PageTranslationProvider;,
        Lcom/android/launcher3/LauncherState$PageAlphaProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_APPS:Lcom/android/launcher3/LauncherState;

.field public static final ALL_APPS_CONTENT:I = 0x2

.field public static final BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

.field public static final CLEAR_ALL_BUTTON:I = 0x10

.field protected static final DEFAULT_ALPHA_PROVIDER:Lcom/android/launcher3/LauncherState$PageAlphaProvider;

.field protected static final DEFAULT_PAGE_TRANSLATION_PROVIDER:Lcom/android/launcher3/LauncherState$PageTranslationProvider;

.field public static final FLAG_CLOSE_POPUPS:I

.field public static final FLAG_HAS_SYS_UI_SCRIM:I

.field public static final FLAG_HIDE_BACK_BUTTON:I

.field public static final FLAG_HOTSEAT_INACCESSIBLE:I

.field public static final FLAG_MULTI_PAGE:I

.field public static final FLAG_OVERVIEW_UI:I

.field public static final FLAG_WORKSPACE_HAS_BACKGROUNDS:I

.field public static final FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED:I

.field public static final FLAG_WORKSPACE_INACCESSIBLE:I

.field public static final HINT_STATE:Lcom/android/launcher3/LauncherState;

.field public static final HINT_STATE_TWO_BUTTON:Lcom/android/launcher3/LauncherState;

.field public static final HOTSEAT_ICONS:I = 0x1

.field public static final NONE:I = 0x0

.field public static final NORMAL:Lcom/android/launcher3/LauncherState;

.field public static final NO_OFFSET:F = 0.0f

.field public static final NO_SCALE:F = 1.0f

.field public static final OVERVIEW:Lcom/android/launcher3/LauncherState;

.field public static final OVERVIEW_ACTIONS:I = 0x8

.field public static final OVERVIEW_MODAL_TASK:Lcom/android/launcher3/LauncherState;

.field public static final OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/LauncherState;

.field public static final QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

.field public static final SPLIT_PLACHOLDER_VIEW:I = 0x40

.field public static final SPRING_LOADED:Lcom/android/launcher3/LauncherState;

.field public static final VERTICAL_SWIPE_INDICATOR:I = 0x4

.field public static final WORKSPACE_PAGE_INDICATOR:I = 0x20

.field private static final sAllStates:[Lcom/android/launcher3/LauncherState;


# instance fields
.field private final mFlags:I

.field public final ordinal:I

.field public final overviewUi:Z

.field public final statsLogOrdinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v1

    sput v1, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    .line 68
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v2

    sput v2, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_INACCESSIBLE:I

    .line 71
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v3

    sput v3, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED:I

    .line 73
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v5

    sput v5, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_HAS_BACKGROUNDS:I

    .line 76
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v6

    sput v6, Lcom/android/launcher3/LauncherState;->FLAG_HIDE_BACK_BUTTON:I

    .line 78
    const/4 v7, 0x5

    invoke-static {v7}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v8

    sput v8, Lcom/android/launcher3/LauncherState;->FLAG_HAS_SYS_UI_SCRIM:I

    .line 80
    const/4 v9, 0x6

    invoke-static {v9}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v10

    sput v10, Lcom/android/launcher3/LauncherState;->FLAG_CLOSE_POPUPS:I

    .line 81
    const/4 v10, 0x7

    invoke-static {v10}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v11

    sput v11, Lcom/android/launcher3/LauncherState;->FLAG_OVERVIEW_UI:I

    .line 84
    const/16 v11, 0x8

    invoke-static {v11}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v12

    sput v12, Lcom/android/launcher3/LauncherState;->FLAG_HOTSEAT_INACCESSIBLE:I

    .line 90
    new-instance v12, Lcom/android/launcher3/LauncherState$1;

    sget-object v13, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-direct {v12, v13}, Lcom/android/launcher3/LauncherState$1;-><init>(Landroid/view/animation/Interpolator;)V

    sput-object v12, Lcom/android/launcher3/LauncherState;->DEFAULT_ALPHA_PROVIDER:Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    .line 98
    new-instance v12, Lcom/android/launcher3/LauncherState$2;

    sget-object v13, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    invoke-direct {v12, v13}, Lcom/android/launcher3/LauncherState$2;-><init>(Landroid/view/animation/Interpolator;)V

    sput-object v12, Lcom/android/launcher3/LauncherState;->DEFAULT_PAGE_TRANSLATION_PROVIDER:Lcom/android/launcher3/LauncherState$PageTranslationProvider;

    .line 106
    const/16 v12, 0xa

    new-array v12, v12, [Lcom/android/launcher3/LauncherState;

    sput-object v12, Lcom/android/launcher3/LauncherState;->sAllStates:[Lcom/android/launcher3/LauncherState;

    .line 111
    new-instance v12, Lcom/android/launcher3/LauncherState$3;

    or-int/2addr v3, v2

    or-int/2addr v3, v6

    or-int/2addr v3, v8

    invoke-direct {v12, v0, v2, v3}, Lcom/android/launcher3/LauncherState$3;-><init>(III)V

    sput-object v12, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 125
    new-instance v0, Lcom/android/launcher3/states/SpringLoadedState;

    invoke-direct {v0, v1}, Lcom/android/launcher3/states/SpringLoadedState;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    .line 127
    new-instance v0, Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-direct {v0, v7}, Lcom/android/launcher3/uioverrides/states/AllAppsState;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    .line 128
    new-instance v0, Lcom/android/launcher3/states/HintState;

    invoke-direct {v0, v10}, Lcom/android/launcher3/states/HintState;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    .line 129
    new-instance v0, Lcom/android/launcher3/states/HintState;

    invoke-direct {v0, v11, v4}, Lcom/android/launcher3/states/HintState;-><init>(II)V

    sput-object v0, Lcom/android/launcher3/LauncherState;->HINT_STATE_TWO_BUTTON:Lcom/android/launcher3/LauncherState;

    .line 132
    new-instance v0, Lcom/android/launcher3/uioverrides/states/OverviewState;

    invoke-direct {v0, v2}, Lcom/android/launcher3/uioverrides/states/OverviewState;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 133
    invoke-static {v4}, Lcom/android/launcher3/uioverrides/states/OverviewState;->newModalTaskState(I)Lcom/android/launcher3/uioverrides/states/OverviewState;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW_MODAL_TASK:Lcom/android/launcher3/LauncherState;

    .line 135
    nop

    .line 136
    invoke-static {v5}, Lcom/android/launcher3/uioverrides/states/OverviewState;->newSwitchState(I)Lcom/android/launcher3/uioverrides/states/OverviewState;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    .line 137
    nop

    .line 138
    invoke-static {v9}, Lcom/android/launcher3/uioverrides/states/OverviewState;->newBackgroundState(I)Lcom/android/launcher3/uioverrides/states/OverviewState;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    .line 139
    nop

    .line 140
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/states/OverviewState;->newSplitSelectState(I)Lcom/android/launcher3/uioverrides/states/OverviewState;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/LauncherState;

    .line 139
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "statsLogOrdinal"    # I
    .param p3, "flags"    # I

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p2, p0, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    .line 158
    iput p3, p0, Lcom/android/launcher3/LauncherState;->mFlags:I

    .line 159
    sget v0, Lcom/android/launcher3/LauncherState;->FLAG_OVERVIEW_UI:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    .line 160
    iput p1, p0, Lcom/android/launcher3/LauncherState;->ordinal:I

    .line 161
    sget-object v0, Lcom/android/launcher3/LauncherState;->sAllStates:[Lcom/android/launcher3/LauncherState;

    aput-object p0, v0, p1

    .line 162
    return-void
.end method

.method public static values()[Lcom/android/launcher3/LauncherState;
    .locals 2

    .line 173
    sget-object v0, Lcom/android/launcher3/LauncherState;->sAllStates:[Lcom/android/launcher3/LauncherState;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/LauncherState;

    return-object v0
.end method


# virtual methods
.method public areElementsVisible(Lcom/android/launcher3/Launcher;I)Z
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "elements"    # I

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getDepth(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 265
    nop

    .line 266
    invoke-static {p1}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    .line 265
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;Z)F

    move-result v0

    return v0
.end method

.method public final getDepth(Landroid/content/Context;Z)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isMultiWindowMode"    # Z

    .line 275
    if-eqz p2, :cond_0

    .line 276
    const/4 v0, 0x0

    return v0

    .line 278
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherState;->getDepthUnchecked(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method protected getDepthUnchecked(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 286
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForState(Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/LauncherState;
    .locals 1
    .param p1, "previousState"    # Lcom/android/launcher3/LauncherState;

    .line 325
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    return-object v0
.end method

.method public bridge synthetic getHistoryForState(Lcom/android/launcher3/statemanager/BaseState;)Lcom/android/launcher3/statemanager/BaseState;
    .locals 0

    .line 50
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherState;->getHistoryForState(Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/LauncherState;

    move-result-object p1

    return-object p1
.end method

.method public getHotseatScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v0

    return-object v0
.end method

.method public getOverviewFullscreenProgress()F
    .locals 1

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public getOverviewModalness()F
    .locals 1

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 192
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getNormalOverviewScaleAndOffset()[F

    move-result-object v0

    return-object v0
.end method

.method public getSplitSelectTranslation(Lcom/android/launcher3/Launcher;)F
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalProgress(Lcom/android/launcher3/Launcher;)F
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 227
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 200
    const/16 v0, 0x25

    return v0
.end method

.method public getWorkspaceBackgroundAlpha(Lcom/android/launcher3/Launcher;)F
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 290
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-ne p0, v0, :cond_1

    .line 291
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    :cond_1
    sget-object v0, Lcom/android/launcher3/LauncherState;->DEFAULT_ALPHA_PROVIDER:Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    return-object v0

    .line 294
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    .line 295
    .local v0, "centerPage":I
    new-instance v1, Lcom/android/launcher3/LauncherState$4;

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/launcher3/LauncherState$4;-><init>(Lcom/android/launcher3/LauncherState;Landroid/view/animation/Interpolator;I)V

    return-object v1
.end method

.method public getWorkspacePageTranslationProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageTranslationProvider;
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 307
    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageSpacing()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    .line 311
    .local v0, "quarterPageSpacing":F
    new-instance v1, Lcom/android/launcher3/LauncherState$5;

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/launcher3/LauncherState$5;-><init>(Lcom/android/launcher3/LauncherState;Landroid/view/animation/Interpolator;Lcom/android/launcher3/Launcher;F)V

    return-object v1

    .line 308
    .end local v0    # "quarterPageSpacing":F
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->DEFAULT_PAGE_TRANSLATION_PROVIDER:Lcom/android/launcher3/LauncherState$PageTranslationProvider;

    return-object v0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 177
    new-instance v0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object v0
.end method

.method public getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFlag(I)Z
    .locals 1
    .param p1, "mask"    # I

    .line 169
    iget v0, p0, Lcom/android/launcher3/LauncherState;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTaskbarAlignedWithHotseat(Lcom/android/launcher3/Launcher;)Z
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherState;->isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed(Lcom/android/launcher3/Launcher;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 334
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p0, v0, :cond_0

    .line 335
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 336
    .local v0, "lsm":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<Lcom/android/launcher3/LauncherState;>;"
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    .line 337
    .local v1, "lastState":Lcom/android/launcher3/LauncherState;
    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 339
    .end local v0    # "lsm":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<Lcom/android/launcher3/LauncherState;>;"
    .end local v1    # "lastState":Lcom/android/launcher3/LauncherState;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 330
    iget v0, p0, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {v0}, Lcom/android/launcher3/testing/TestProtocol;->stateOrdinalToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
