.class public final synthetic Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/folder/FolderIcon;

.field public final synthetic f$1:Lcom/android/launcher3/DropTarget$DragObject;

.field public final synthetic f$2:Lcom/android/launcher3/folder/FolderNameInfos;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/FolderNameInfos;ILcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/folder/FolderIcon;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda5;->f$1:Lcom/android/launcher3/DropTarget$DragObject;

    iput-object p3, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda5;->f$2:Lcom/android/launcher3/folder/FolderNameInfos;

    iput p4, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda5;->f$3:I

    iput-object p5, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda5;->f$4:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda5;->f$1:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda5;->f$2:Lcom/android/launcher3/folder/FolderNameInfos;

    iget v3, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda5;->f$3:I

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda5;->f$4:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/folder/FolderIcon;->lambda$onDrop$0$com-android-launcher3-folder-FolderIcon(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/FolderNameInfos;ILcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method
