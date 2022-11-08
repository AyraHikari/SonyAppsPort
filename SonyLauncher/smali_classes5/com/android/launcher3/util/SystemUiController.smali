.class public Lcom/android/launcher3/util/SystemUiController;
.super Ljava/lang/Object;
.source "SystemUiController.java"


# static fields
.field public static final FLAG_DARK_NAV:I = 0x2

.field public static final FLAG_DARK_STATUS:I = 0x8

.field public static final FLAG_LIGHT_NAV:I = 0x1

.field public static final FLAG_LIGHT_STATUS:I = 0x4

.field public static final UI_STATE_ALLAPPS:I = 0x4

.field public static final UI_STATE_BASE_WINDOW:I = 0x0

.field public static final UI_STATE_FULLSCREEN_TASK:I = 0x3

.field public static final UI_STATE_SCRIM_VIEW:I = 0x1

.field public static final UI_STATE_WIDGET_BOTTOM_SHEET:I = 0x2


# instance fields
.field private final mStates:[I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 1
    .param p1, "window"    # Landroid/view/Window;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    .line 45
    iput-object p1, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    .line 46
    return-void
.end method

.method private getSysUiVisibilityFlags(II)I
    .locals 1
    .param p1, "stateFlag"    # I
    .param p2, "currentVisibility"    # I

    .line 79
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 80
    or-int/lit8 p2, p2, 0x10

    goto :goto_0

    .line 81
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 82
    and-int/lit8 p2, p2, -0x11

    .line 85
    :cond_1
    :goto_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 86
    or-int/lit16 p2, p2, 0x2000

    goto :goto_1

    .line 87
    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    .line 88
    and-int/lit16 p2, p2, -0x2001

    .line 90
    :cond_3
    :goto_1
    return p2
.end method


# virtual methods
.method public getBaseSysuiVisibility()I
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    .line 75
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/SystemUiController;->getSysUiVisibilityFlags(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateUiState(II)V
    .locals 6
    .param p1, "uiState"    # I
    .param p2, "flags"    # I

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    aget v1, v0, p1

    if-ne v1, p2, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    aput p2, v0, p1

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 61
    .local v0, "oldFlags":I
    move v1, v0

    .line 62
    .local v1, "newFlags":I
    iget-object v2, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    .line 63
    .local v5, "stateFlag":I
    invoke-direct {p0, v5, v1}, Lcom/android/launcher3/util/SystemUiController;->getSysUiVisibilityFlags(II)I

    move-result v1

    .line 62
    .end local v5    # "stateFlag":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 65
    :cond_1
    if-eq v1, v0, :cond_2

    .line 66
    iget-object v2, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 68
    :cond_2
    return-void
.end method

.method public updateUiState(IZ)V
    .locals 1
    .param p1, "uiState"    # I
    .param p2, "isLight"    # Z

    .line 49
    if-eqz p2, :cond_0

    .line 50
    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 49
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 51
    return-void
.end method
