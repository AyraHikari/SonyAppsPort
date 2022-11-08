.class public Lcom/android/launcher3/LauncherBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "LauncherBackupAgent.java"


# static fields
.field private static final IS_HOME_FINISHED_RESTORE:Ljava/lang/String; = "somc.is_home_finished_restore"

.field private static final TAG:Ljava/lang/String; = "LauncherBackupAgent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 53
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 27
    invoke-super {p0}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 29
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/logging/FileLog;->setDir(Ljava/io/File;)V

    .line 30
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 36
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .locals 2
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "destination"    # Ljava/io/File;
    .param p5, "type"    # I
    .param p6, "mode"    # J
    .param p8, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed obsolete file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherBackupAgent"

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V

    .line 47
    return-void
.end method

.method public onRestoreFinished()V
    .locals 3

    .line 57
    invoke-static {p0}, Lcom/android/launcher3/provider/RestoreDbTask;->setPending(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "somc.is_home_finished_restore"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    return-void
.end method
