.class public interface abstract Lcom/android/launcher3/logger/LauncherAtom$FolderContainerOrBuilder;
.super Ljava/lang/Object;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FolderContainerOrBuilder"
.end annotation


# virtual methods
.method public abstract getGridX()I
.end method

.method public abstract getGridY()I
.end method

.method public abstract getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
.end method

.method public abstract getPageIndex()I
.end method

.method public abstract getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
.end method

.method public abstract getTaskbar()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
.end method

.method public abstract getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
.end method

.method public abstract hasGridX()Z
.end method

.method public abstract hasGridY()Z
.end method

.method public abstract hasHotseat()Z
.end method

.method public abstract hasPageIndex()Z
.end method

.method public abstract hasTaskbar()Z
.end method

.method public abstract hasWorkspace()Z
.end method
