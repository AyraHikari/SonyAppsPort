.class public Lcom/android/quickstep/util/NavBarPosition;
.super Ljava/lang/Object;
.source "NavBarPosition.java"


# instance fields
.field private final mDisplayRotation:I

.field private final mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/DisplayController$NavigationMode;I)V
    .locals 0
    .param p1, "mode"    # Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .param p2, "displayRotation"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/quickstep/util/NavBarPosition;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 40
    iput p2, p0, Lcom/android/quickstep/util/NavBarPosition;->mDisplayRotation:I

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/util/DisplayController$NavigationMode;Lcom/android/launcher3/util/DisplayController$Info;)V
    .locals 1
    .param p1, "mode"    # Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/quickstep/util/NavBarPosition;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 35
    iget v0, p2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iput v0, p0, Lcom/android/quickstep/util/NavBarPosition;->mDisplayRotation:I

    .line 36
    return-void
.end method


# virtual methods
.method public getRotation()F
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/android/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, -0x5a

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    int-to-float v0, v0

    :goto_1
    return v0
.end method

.method public isLeftEdge()Z
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/quickstep/util/NavBarPosition;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/quickstep/util/NavBarPosition;->mDisplayRotation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRightEdge()Z
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/android/quickstep/util/NavBarPosition;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/quickstep/util/NavBarPosition;->mDisplayRotation:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
