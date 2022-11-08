.class public Lcom/android/launcher3/states/RotationHelper;
.super Ljava/lang/Object;
.source "RotationHelper.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# static fields
.field public static final ALLOW_ROTATION_PREFERENCE_KEY:Ljava/lang/String; = "pref_allowRotation"

.field public static final REQUEST_LOCK:I = 0x2

.field public static final REQUEST_NONE:I = 0x0

.field public static final REQUEST_ROTATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RotationHelper"


# instance fields
.field private mActivity:Lcom/android/launcher3/BaseActivity;

.field private mCurrentStateRequest:I

.field private mCurrentTransitionRequest:I

.field private mDestroyed:Z

.field private mForceAllowRotationForTesting:Z

.field private mHomeRotationEnabled:Z

.field private mIgnoreAutoRotateSettings:Z

.field private mInitialized:Z

.field private mLastActivityFlags:I

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mStateHandlerRequest:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/launcher3/BaseActivity;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/states/RotationHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/states/RotationHelper;->mStateHandlerRequest:I

    .line 79
    iput v0, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentTransitionRequest:I

    .line 83
    iput v0, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentStateRequest:I

    .line 90
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/android/launcher3/states/RotationHelper;->mLastActivityFlags:I

    .line 93
    iput-object p1, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    .line 94
    return-void
.end method

.method public static deltaRotation(II)I
    .locals 1
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .line 216
    sub-int v0, p1, p0

    .line 217
    .local v0, "delta":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 218
    :cond_0
    return v0
.end method

.method public static getAllowRotationDefaultValue(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 2
    .param p0, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 54
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    .line 54
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v0

    .line 56
    .local v0, "originalSmallestWidth":F
    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private notifyChange()V
    .locals 4

    .line 182
    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mInitialized:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_4

    .line 187
    :cond_0
    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mStateHandlerRequest:I

    const/16 v1, 0xe

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 188
    if-ne v0, v3, :cond_1

    .line 189
    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    .local v0, "activityFlags":I
    goto :goto_3

    .line 190
    .end local v0    # "activityFlags":I
    :cond_2
    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentTransitionRequest:I

    if-eqz v0, :cond_4

    .line 191
    if-ne v0, v3, :cond_3

    .line 192
    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    move v0, v1

    .restart local v0    # "activityFlags":I
    goto :goto_3

    .line 193
    .end local v0    # "activityFlags":I
    :cond_4
    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentStateRequest:I

    if-ne v0, v3, :cond_5

    .line 194
    const/16 v0, 0xe

    .restart local v0    # "activityFlags":I
    goto :goto_3

    .line 195
    .end local v0    # "activityFlags":I
    :cond_5
    iget-boolean v1, p0, Lcom/android/launcher3/states/RotationHelper;->mIgnoreAutoRotateSettings:Z

    if-nez v1, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mHomeRotationEnabled:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mForceAllowRotationForTesting:Z

    if-eqz v0, :cond_6

    goto :goto_2

    .line 201
    :cond_6
    const/4 v0, 0x5

    .restart local v0    # "activityFlags":I
    goto :goto_3

    .line 197
    .end local v0    # "activityFlags":I
    :cond_7
    :goto_2
    const/4 v0, -0x1

    .line 203
    .restart local v0    # "activityFlags":I
    :goto_3
    iget v1, p0, Lcom/android/launcher3/states/RotationHelper;->mLastActivityFlags:I

    if-ne v0, v1, :cond_8

    if-ne v0, v2, :cond_9

    .line 205
    :cond_8
    iput v0, p0, Lcom/android/launcher3/states/RotationHelper;->mLastActivityFlags:I

    .line 206
    iget-object v1, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-static {v1, v0}, Lcom/android/launcher3/util/UiThreadHelper;->setOrientationAsync(Landroid/app/Activity;I)V

    .line 208
    :cond_9
    return-void

    .line 183
    .end local v0    # "activityFlags":I
    :cond_a
    :goto_4
    return-void
.end method

.method private setIgnoreAutoRotateSettings(Z)V
    .locals 3
    .param p1, "ignoreAutoRotateSettings"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/android/launcher3/states/RotationHelper;->mIgnoreAutoRotateSettings:Z

    .line 99
    if-nez p1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/states/RotationHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/states/RotationHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 102
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/states/RotationHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    .line 105
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/states/RotationHelper;->getAllowRotationDefaultValue(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    .line 104
    const-string v2, "pref_allowRotation"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mHomeRotationEnabled:Z

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/states/RotationHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 108
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/states/RotationHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 112
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mDestroyed:Z

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/BaseActivity;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/states/RotationHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 179
    :cond_0
    return-void
.end method

.method public forceAllowRotationForTesting(Z)V
    .locals 0
    .param p1, "allowRotation"    # Z

    .line 157
    iput-boolean p1, p0, Lcom/android/launcher3/states/RotationHelper;->mForceAllowRotationForTesting:Z

    .line 158
    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    .line 159
    return-void
.end method

.method public initialize()V
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mInitialized:Z

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mInitialized:Z

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-direct {p0, v0}, Lcom/android/launcher3/states/RotationHelper;->setIgnoreAutoRotateSettings(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/BaseActivity;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 166
    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    .line 168
    :cond_0
    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 127
    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    .line 128
    .local v0, "ignoreAutoRotateSettings":Z
    iget-boolean v1, p0, Lcom/android/launcher3/states/RotationHelper;->mIgnoreAutoRotateSettings:Z

    if-eq v1, v0, :cond_0

    .line 129
    invoke-direct {p0, v0}, Lcom/android/launcher3/states/RotationHelper;->setIgnoreAutoRotateSettings(Z)V

    .line 130
    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    .line 132
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "s"    # Ljava/lang/String;

    .line 116
    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mDestroyed:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mIgnoreAutoRotateSettings:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mHomeRotationEnabled:Z

    .line 118
    .local v0, "wasRotationEnabled":Z
    iget-object v1, p0, Lcom/android/launcher3/states/RotationHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    .line 119
    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/states/RotationHelper;->getAllowRotationDefaultValue(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v2

    .line 118
    const-string v3, "pref_allowRotation"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/states/RotationHelper;->mHomeRotationEnabled:Z

    .line 120
    if-eq v1, v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    .line 123
    :cond_1
    return-void

    .line 116
    .end local v0    # "wasRotationEnabled":Z
    :cond_2
    :goto_0
    return-void
.end method

.method public setCurrentStateRequest(I)V
    .locals 1
    .param p1, "request"    # I

    .line 149
    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentStateRequest:I

    if-eq v0, p1, :cond_0

    .line 150
    iput p1, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentStateRequest:I

    .line 151
    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    .line 153
    :cond_0
    return-void
.end method

.method public setCurrentTransitionRequest(I)V
    .locals 1
    .param p1, "request"    # I

    .line 142
    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentTransitionRequest:I

    if-eq v0, p1, :cond_0

    .line 143
    iput p1, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentTransitionRequest:I

    .line 144
    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    .line 146
    :cond_0
    return-void
.end method

.method public setStateHandlerRequest(I)V
    .locals 1
    .param p1, "request"    # I

    .line 135
    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mStateHandlerRequest:I

    if-eq v0, p1, :cond_0

    .line 136
    iput p1, p0, Lcom/android/launcher3/states/RotationHelper;->mStateHandlerRequest:I

    .line 137
    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    .line 139
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 223
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/launcher3/states/RotationHelper;->mStateHandlerRequest:I

    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentStateRequest:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/states/RotationHelper;->mLastActivityFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/states/RotationHelper;->mIgnoreAutoRotateSettings:Z

    .line 227
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/states/RotationHelper;->mHomeRotationEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/states/RotationHelper;->mForceAllowRotationForTesting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 223
    const-string v1, "[mStateHandlerRequest=%d, mCurrentStateRequest=%d, mLastActivityFlags=%d, mIgnoreAutoRotateSettings=%b, mHomeRotationEnabled=%b, mForceAllowRotationForTesting=%b]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
