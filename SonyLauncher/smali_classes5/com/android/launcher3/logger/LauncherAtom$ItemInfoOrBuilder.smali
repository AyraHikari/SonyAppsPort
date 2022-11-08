.class public interface abstract Lcom/android/launcher3/logger/LauncherAtom$ItemInfoOrBuilder;
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
    name = "ItemInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getApplication()Lcom/android/launcher3/logger/LauncherAtom$Application;
.end method

.method public abstract getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
.end method

.method public abstract getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
.end method

.method public abstract getIsWork()Z
.end method

.method public abstract getItemAttributes(I)Lcom/android/launcher3/logger/LauncherAtom$Attribute;
.end method

.method public abstract getItemAttributesCount()I
.end method

.method public abstract getItemAttributesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/logger/LauncherAtom$Attribute;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;
.end method

.method public abstract getRank()I
.end method

.method public abstract getSearchActionItem()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
.end method

.method public abstract getShortcut()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
.end method

.method public abstract getSlice()Lcom/android/launcher3/logger/LauncherAtom$Slice;
.end method

.method public abstract getTask()Lcom/android/launcher3/logger/LauncherAtom$Task;
.end method

.method public abstract getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;
.end method

.method public abstract hasApplication()Z
.end method

.method public abstract hasContainerInfo()Z
.end method

.method public abstract hasFolderIcon()Z
.end method

.method public abstract hasIsWork()Z
.end method

.method public abstract hasRank()Z
.end method

.method public abstract hasSearchActionItem()Z
.end method

.method public abstract hasShortcut()Z
.end method

.method public abstract hasSlice()Z
.end method

.method public abstract hasTask()Z
.end method

.method public abstract hasWidget()Z
.end method
