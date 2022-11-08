.class public interface abstract Lcom/android/launcher3/pm/InstallSessionTracker$Callback;
.super Ljava/lang/Object;
.source "InstallSessionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/pm/InstallSessionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onInstallSessionCreated(Landroid/content/pm/PackageInstaller$SessionInfo;)V
.end method

.method public abstract onPackageStateChanged(Lcom/android/launcher3/pm/PackageInstallInfo;)V
.end method

.method public abstract onSessionFailure(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract onUpdateSessionDisplay(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V
.end method
