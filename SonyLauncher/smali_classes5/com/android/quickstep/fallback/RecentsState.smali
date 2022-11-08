.class public Lcom/android/quickstep/fallback/RecentsState;
.super Ljava/lang/Object;
.source "RecentsState.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/BaseState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/fallback/RecentsState$LauncherState;,
        Lcom/android/quickstep/fallback/RecentsState$BackgroundAppState;,
        Lcom/android/quickstep/fallback/RecentsState$ModalState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "Lcom/android/quickstep/fallback/RecentsState;",
        ">;"
    }
.end annotation


# static fields
.field public static final BACKGROUND_APP:Lcom/android/quickstep/fallback/RecentsState;

.field public static final BG_LAUNCHER:Lcom/android/quickstep/fallback/RecentsState;

.field public static final DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

.field private static final FLAG_CLEAR_ALL_BUTTON:I

.field private static final FLAG_FULL_SCREEN:I

.field private static final FLAG_LIVE_TILE:I

.field private static final FLAG_MODAL:I

.field private static final FLAG_OVERVIEW_ACTIONS:I

.field private static final FLAG_OVERVIEW_UI:I

.field private static final FLAG_SCRIM:I

.field private static final FLAG_SHOW_AS_GRID:I

.field public static final HOME:Lcom/android/quickstep/fallback/RecentsState;

.field public static final MODAL_TASK:Lcom/android/quickstep/fallback/RecentsState;

.field private static final NO_OFFSET:F = 0.0f

.field private static final NO_SCALE:F = 1.0f

.field public static final OVERVIEW_SPLIT_SELECT:Lcom/android/quickstep/fallback/RecentsState;


# instance fields
.field private final mFlags:I

.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v1

    sput v1, Lcom/android/quickstep/fallback/RecentsState;->FLAG_MODAL:I

    .line 36
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v3

    sput v3, Lcom/android/quickstep/fallback/RecentsState;->FLAG_CLEAR_ALL_BUTTON:I

    .line 37
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v5

    sput v5, Lcom/android/quickstep/fallback/RecentsState;->FLAG_FULL_SCREEN:I

    .line 38
    const/4 v6, 0x3

    invoke-static {v6}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v7

    sput v7, Lcom/android/quickstep/fallback/RecentsState;->FLAG_OVERVIEW_ACTIONS:I

    .line 39
    const/4 v8, 0x4

    invoke-static {v8}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v9

    sput v9, Lcom/android/quickstep/fallback/RecentsState;->FLAG_SHOW_AS_GRID:I

    .line 40
    const/4 v10, 0x5

    invoke-static {v10}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v11

    sput v11, Lcom/android/quickstep/fallback/RecentsState;->FLAG_SCRIM:I

    .line 41
    const/4 v12, 0x6

    invoke-static {v12}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v12

    sput v12, Lcom/android/quickstep/fallback/RecentsState;->FLAG_LIVE_TILE:I

    .line 42
    const/4 v13, 0x7

    invoke-static {v13}, Lcom/android/launcher3/statemanager/BaseState;->getFlag(I)I

    move-result v13

    sput v13, Lcom/android/quickstep/fallback/RecentsState;->FLAG_OVERVIEW_UI:I

    .line 44
    new-instance v14, Lcom/android/quickstep/fallback/RecentsState;

    or-int/lit8 v15, v3, 0x2

    or-int/2addr v15, v7

    or-int/2addr v15, v9

    or-int/2addr v15, v11

    or-int/2addr v15, v12

    or-int/2addr v15, v13

    invoke-direct {v14, v0, v15}, Lcom/android/quickstep/fallback/RecentsState;-><init>(II)V

    sput-object v14, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    .line 47
    new-instance v14, Lcom/android/quickstep/fallback/RecentsState$ModalState;

    or-int/2addr v3, v4

    or-int/2addr v3, v7

    or-int/2addr v1, v3

    or-int/2addr v1, v9

    or-int/2addr v1, v11

    or-int/2addr v1, v12

    or-int/2addr v1, v13

    invoke-direct {v14, v2, v1}, Lcom/android/quickstep/fallback/RecentsState$ModalState;-><init>(II)V

    sput-object v14, Lcom/android/quickstep/fallback/RecentsState;->MODAL_TASK:Lcom/android/quickstep/fallback/RecentsState;

    .line 50
    new-instance v1, Lcom/android/quickstep/fallback/RecentsState$BackgroundAppState;

    or-int/lit8 v2, v5, 0x3

    or-int/2addr v2, v13

    invoke-direct {v1, v4, v2}, Lcom/android/quickstep/fallback/RecentsState$BackgroundAppState;-><init>(II)V

    sput-object v1, Lcom/android/quickstep/fallback/RecentsState;->BACKGROUND_APP:Lcom/android/quickstep/fallback/RecentsState;

    .line 52
    new-instance v1, Lcom/android/quickstep/fallback/RecentsState;

    invoke-direct {v1, v6, v0}, Lcom/android/quickstep/fallback/RecentsState;-><init>(II)V

    sput-object v1, Lcom/android/quickstep/fallback/RecentsState;->HOME:Lcom/android/quickstep/fallback/RecentsState;

    .line 53
    new-instance v1, Lcom/android/quickstep/fallback/RecentsState$LauncherState;

    invoke-direct {v1, v8, v0}, Lcom/android/quickstep/fallback/RecentsState$LauncherState;-><init>(II)V

    sput-object v1, Lcom/android/quickstep/fallback/RecentsState;->BG_LAUNCHER:Lcom/android/quickstep/fallback/RecentsState;

    .line 54
    new-instance v0, Lcom/android/quickstep/fallback/RecentsState;

    or-int v1, v9, v11

    or-int/2addr v1, v13

    invoke-direct {v0, v10, v1}, Lcom/android/quickstep/fallback/RecentsState;-><init>(II)V

    sput-object v0, Lcom/android/quickstep/fallback/RecentsState;->OVERVIEW_SPLIT_SELECT:Lcom/android/quickstep/fallback/RecentsState;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/android/quickstep/fallback/RecentsState;->ordinal:I

    .line 65
    iput p2, p0, Lcom/android/quickstep/fallback/RecentsState;->mFlags:I

    .line 66
    return-void
.end method


# virtual methods
.method public displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 1
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 138
    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_SHOW_AS_GRID:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getHistoryForState(Lcom/android/launcher3/statemanager/BaseState;)Lcom/android/launcher3/statemanager/BaseState;
    .locals 0

    .line 33
    check-cast p1, Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/fallback/RecentsState;->getHistoryForState(Lcom/android/quickstep/fallback/RecentsState;)Lcom/android/quickstep/fallback/RecentsState;

    move-result-object p1

    return-object p1
.end method

.method public getHistoryForState(Lcom/android/quickstep/fallback/RecentsState;)Lcom/android/quickstep/fallback/RecentsState;
    .locals 1
    .param p1, "previousState"    # Lcom/android/quickstep/fallback/RecentsState;

    .line 86
    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    return-object v0
.end method

.method public getOverviewModalness()F
    .locals 1

    .line 94
    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_MODAL:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOverviewScaleAndOffset(Lcom/android/quickstep/RecentsActivity;)[F
    .locals 1
    .param p1, "activity"    # Lcom/android/quickstep/RecentsActivity;

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getScrimColor(Lcom/android/quickstep/RecentsActivity;)I
    .locals 1
    .param p1, "activity"    # Lcom/android/quickstep/RecentsActivity;

    .line 126
    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_SCRIM:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/launcher3/R$attr;->overviewScrimColor:I

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0
.end method

.method public getTransitionDuration(Landroid/content/Context;Z)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isToState"    # Z

    .line 81
    const/16 v0, 0xfa

    return v0
.end method

.method public hasClearAllButton()Z
    .locals 1

    .line 105
    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_CLEAR_ALL_BUTTON:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public final hasFlag(I)Z
    .locals 1
    .param p1, "mask"    # I

    .line 76
    iget v0, p0, Lcom/android/quickstep/fallback/RecentsState;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLiveTile()Z
    .locals 1

    .line 119
    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_LIVE_TILE:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public hasOverviewActions()Z
    .locals 1

    .line 112
    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_OVERVIEW_ACTIONS:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .line 98
    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_FULL_SCREEN:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public overviewUi()Z
    .locals 1

    .line 145
    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_OVERVIEW_UI:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ordinal-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/fallback/RecentsState;->ordinal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
