.class public final synthetic Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/folder/FolderIcon;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic f$3:Lcom/android/launcher3/folder/FolderNameInfos;

.field public final synthetic f$4:Lcom/android/launcher3/logging/InstanceId;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/FolderIcon;ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/folder/FolderIcon;

    iput p2, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda4;->f$2:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p4, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda4;->f$3:Lcom/android/launcher3/folder/FolderNameInfos;

    iput-object p5, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda4;->f$4:Lcom/android/launcher3/logging/InstanceId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/folder/FolderIcon;

    iget v1, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda4;->f$2:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda4;->f$3:Lcom/android/launcher3/folder/FolderNameInfos;

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda4;->f$4:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/folder/FolderIcon;->lambda$showFinalView$1$com-android-launcher3-folder-FolderIcon(ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V

    return-void
.end method
