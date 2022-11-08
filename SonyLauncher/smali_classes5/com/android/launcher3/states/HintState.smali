.class public Lcom/android/launcher3/states/HintState;
.super Lcom/android/launcher3/LauncherState;
.source "HintState.java"


# static fields
.field private static final STATE_FLAGS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    sget v0, Lcom/android/launcher3/states/HintState;->FLAG_WORKSPACE_INACCESSIBLE:I

    or-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/launcher3/states/HintState;->FLAG_HAS_SYS_UI_SCRIM:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/launcher3/states/HintState;->STATE_FLAGS:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 38
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/states/HintState;-><init>(II)V

    .line 39
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "statsLogOrdinal"    # I

    .line 42
    sget v0, Lcom/android/launcher3/states/HintState;->STATE_FLAGS:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/LauncherState;-><init>(III)V

    .line 43
    return-void
.end method


# virtual methods
.method protected getDepthUnchecked(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    const v0, 0x3e19999a    # 0.15f

    return v0
.end method

.method public getTransitionDuration(Landroid/content/Context;Z)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isToState"    # Z

    .line 47
    const/16 v0, 0x50

    return v0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 63
    new-instance v0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const v1, 0x3f6b851f    # 0.92f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object v0
.end method

.method public getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 57
    sget v0, Lcom/android/launcher3/R$attr;->overviewScrimColor:I

    .line 58
    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 57
    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    return v0
.end method
