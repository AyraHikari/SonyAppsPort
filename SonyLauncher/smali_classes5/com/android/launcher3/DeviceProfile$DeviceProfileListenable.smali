.class public interface abstract Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;
.super Ljava/lang/Object;
.source "DeviceProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceProfileListenable"
.end annotation


# virtual methods
.method public addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    .line 1511
    invoke-interface {p0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->getOnDeviceProfileChangeListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1512
    return-void
.end method

.method public dispatchDeviceProfileChanged()V
    .locals 4

    .line 1502
    invoke-interface {p0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 1503
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    invoke-interface {p0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->getOnDeviceProfileChangeListeners()Ljava/util/List;

    move-result-object v1

    .line 1504
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 1505
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-interface {v3, v0}, Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;->onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V

    .line 1504
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1507
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public abstract getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
.end method

.method public abstract getOnDeviceProfileChangeListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
            ">;"
        }
    .end annotation
.end method

.method public removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    .line 1516
    invoke-interface {p0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->getOnDeviceProfileChangeListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1517
    return-void
.end method
