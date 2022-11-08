.class public Lcom/android/launcher3/model/DeviceGridState;
.super Ljava/lang/Object;
.source "DeviceGridState.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/launcher3/model/DeviceGridState;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_DB_FILE:Ljava/lang/String; = "migration_src_db_file"

.field public static final KEY_DEVICE_TYPE:Ljava/lang/String; = "migration_src_device_type"

.field public static final KEY_HOTSEAT_COUNT:Ljava/lang/String; = "migration_src_hotseat_count"

.field public static final KEY_WORKSPACE_SIZE:Ljava/lang/String; = "migration_src_workspace_size"


# instance fields
.field private final mDbFile:Ljava/lang/String;

.field private final mDeviceType:I

.field private final mGridSizeString:Ljava/lang/String;

.field private final mNumHotseat:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "migration_src_workspace_size"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/model/DeviceGridState;->mGridSizeString:Ljava/lang/String;

    .line 63
    const-string v1, "migration_src_hotseat_count"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/DeviceGridState;->mNumHotseat:I

    .line 64
    const-string v1, "migration_src_device_type"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/DeviceGridState;->mDeviceType:I

    .line 65
    const-string v1, "migration_src_db_file"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/model/DeviceGridState;->mDbFile:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 4
    .param p1, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%d,%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mGridSizeString:Ljava/lang/String;

    .line 55
    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    iput v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mNumHotseat:I

    .line 56
    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->deviceType:I

    iput v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mDeviceType:I

    .line 57
    iget-object v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mDbFile:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/launcher3/model/DeviceGridState;)I
    .locals 3
    .param p1, "other"    # Lcom/android/launcher3/model/DeviceGridState;

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/model/DeviceGridState;->getRows()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 154
    .local v0, "size":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceGridState;->getRows()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 156
    .local v1, "otherSize":Ljava/lang/Integer;
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lcom/android/launcher3/model/DeviceGridState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/DeviceGridState;->compareTo(Lcom/android/launcher3/model/DeviceGridState;)I

    move-result p1

    return p1
.end method

.method public getColumns()Ljava/lang/Integer;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mGridSizeString:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDbFile()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mDbFile:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mDeviceType:I

    return v0
.end method

.method public getNumHotseat()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mNumHotseat:I

    return v0
.end method

.method public getRows()Ljava/lang/Integer;
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mGridSizeString:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspaceSizeEvent()Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mGridSizeString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GRID_SIZE_6:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object v0

    .line 110
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GRID_SIZE_5:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object v0

    .line 112
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GRID_SIZE_4:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object v0

    .line 114
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GRID_SIZE_3:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object v0

    .line 116
    :pswitch_4
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GRID_SIZE_2:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object v0

    .line 119
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isCompatible(Lcom/android/launcher3/model/DeviceGridState;)Z
    .locals 4
    .param p1, "other"    # Lcom/android/launcher3/model/DeviceGridState;

    .line 137
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 138
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 139
    :cond_1
    iget v2, p0, Lcom/android/launcher3/model/DeviceGridState;->mNumHotseat:I

    iget v3, p1, Lcom/android/launcher3/model/DeviceGridState;->mNumHotseat:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/model/DeviceGridState;->mGridSizeString:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/model/DeviceGridState;->mGridSizeString:Ljava/lang/String;

    .line 140
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 139
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceGridState{mGridSizeString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/DeviceGridState;->mGridSizeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNumHotseat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/DeviceGridState;->mNumHotseat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/DeviceGridState;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDbFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/DeviceGridState;->mDbFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToPrefs(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/DeviceGridState;->mGridSizeString:Ljava/lang/String;

    .line 94
    const-string v2, "migration_src_workspace_size"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/DeviceGridState;->mNumHotseat:I

    .line 95
    const-string v2, "migration_src_hotseat_count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/DeviceGridState;->mDeviceType:I

    .line 96
    const-string v2, "migration_src_device_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/DeviceGridState;->mDbFile:Ljava/lang/String;

    .line 97
    const-string v2, "migration_src_db_file"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    return-void
.end method
