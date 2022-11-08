.class public final synthetic Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/folder/FolderNameProvider;

.field public final synthetic f$1:Lcom/android/launcher3/folder/FolderNameInfos;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/FolderNameProvider;Lcom/android/launcher3/folder/FolderNameInfos;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/folder/FolderNameProvider;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda4;->f$1:Lcom/android/launcher3/folder/FolderNameInfos;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/folder/FolderNameProvider;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda4;->f$1:Lcom/android/launcher3/folder/FolderNameInfos;

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/folder/FolderNameProvider;->lambda$getSuggestedFolderName$1$com-android-launcher3-folder-FolderNameProvider(Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method
