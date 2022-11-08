.class public Lcom/android/launcher3/uioverrides/DeviceFlag;
.super Lcom/android/launcher3/config/FeatureFlags$DebugFlag;
.source "DeviceFlag.java"


# static fields
.field public static final NAMESPACE_LAUNCHER:Ljava/lang/String; = "launcher"


# instance fields
.field private final mDefaultValueInCode:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "description"    # Ljava/lang/String;

    .line 33
    invoke-static {p1, p2}, Lcom/android/launcher3/uioverrides/DeviceFlag;->getDeviceValue(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 34
    iput-boolean p2, p0, Lcom/android/launcher3/uioverrides/DeviceFlag;->mDefaultValueInCode:Z

    .line 35
    return-void
.end method

.method protected static getDeviceValue(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .line 49
    const-string v0, "launcher"

    invoke-static {v0, p0, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected appendProps(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "src"    # Ljava/lang/StringBuilder;

    .line 39
    invoke-super {p0, p1}, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->appendProps(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultValueInCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/uioverrides/DeviceFlag;->mDefaultValueInCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public get()Z
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->get()Z

    move-result v0

    return v0
.end method
