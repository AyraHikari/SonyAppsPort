.class public Lcom/android/launcher3/DeviceProfile$Builder;
.super Ljava/lang/Object;
.source "DeviceProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/android/launcher3/util/DisplayController$Info;

.field private mInv:Lcom/android/launcher3/InvariantDeviceProfile;

.field private mIsGestureMode:Ljava/lang/Boolean;

.field private mIsMultiWindowMode:Z

.field private mTransposeLayoutWithOrientation:Ljava/lang/Boolean;

.field private mUseTwoPanels:Z

.field private mWindowBounds:Lcom/android/launcher3/util/WindowBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inv"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p3, "info"    # Lcom/android/launcher3/util/DisplayController$Info;

    .line 1532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsMultiWindowMode:Z

    .line 1533
    iput-object p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mContext:Landroid/content/Context;

    .line 1534
    iput-object p2, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInv:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 1535
    iput-object p3, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    .line 1536
    return-void
.end method


# virtual methods
.method public build()Lcom/android/launcher3/DeviceProfile;
    .locals 10

    .line 1565
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mWindowBounds:Lcom/android/launcher3/util/WindowBounds;

    if-eqz v0, :cond_2

    .line 1568
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mTransposeLayoutWithOrientation:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 1569
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mTransposeLayoutWithOrientation:Ljava/lang/Boolean;

    .line 1571
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsGestureMode:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 1572
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsGestureMode:Ljava/lang/Boolean;

    .line 1574
    :cond_1
    new-instance v0, Lcom/android/launcher3/DeviceProfile;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mWindowBounds:Lcom/android/launcher3/util/WindowBounds;

    iget-boolean v6, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsMultiWindowMode:Z

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mTransposeLayoutWithOrientation:Ljava/lang/Boolean;

    .line 1575
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-boolean v8, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mUseTwoPanels:Z

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsGestureMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/util/WindowBounds;ZZZZ)V

    .line 1574
    return-object v0

    .line 1566
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window bounds not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGestureMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;
    .locals 1
    .param p1, "isGestureMode"    # Z

    .line 1560
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsGestureMode:Ljava/lang/Boolean;

    .line 1561
    return-object p0
.end method

.method public setMultiWindowMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;
    .locals 0
    .param p1, "isMultiWindowMode"    # Z

    .line 1539
    iput-boolean p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsMultiWindowMode:Z

    .line 1540
    return-object p0
.end method

.method public setTransposeLayoutWithOrientation(Z)Lcom/android/launcher3/DeviceProfile$Builder;
    .locals 1
    .param p1, "transposeLayoutWithOrientation"    # Z

    .line 1555
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mTransposeLayoutWithOrientation:Ljava/lang/Boolean;

    .line 1556
    return-object p0
.end method

.method public setUseTwoPanels(Z)Lcom/android/launcher3/DeviceProfile$Builder;
    .locals 0
    .param p1, "useTwoPanels"    # Z

    .line 1544
    iput-boolean p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mUseTwoPanels:Z

    .line 1545
    return-object p0
.end method

.method public setWindowBounds(Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile$Builder;
    .locals 0
    .param p1, "bounds"    # Lcom/android/launcher3/util/WindowBounds;

    .line 1550
    iput-object p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mWindowBounds:Lcom/android/launcher3/util/WindowBounds;

    .line 1551
    return-object p0
.end method
