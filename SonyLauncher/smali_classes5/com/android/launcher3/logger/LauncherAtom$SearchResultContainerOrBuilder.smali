.class public interface abstract Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainerOrBuilder;
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
    name = "SearchResultContainerOrBuilder"
.end annotation


# virtual methods
.method public abstract getAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
.end method

.method public abstract getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;
.end method

.method public abstract getQueryLength()I
.end method

.method public abstract getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
.end method

.method public abstract hasAllAppsContainer()Z
.end method

.method public abstract hasQueryLength()Z
.end method

.method public abstract hasWorkspace()Z
.end method
