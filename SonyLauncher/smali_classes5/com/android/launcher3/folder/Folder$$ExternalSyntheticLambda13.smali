.class public final synthetic Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/folder/FolderPagedView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/FolderPagedView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda13;->f$0:Lcom/android/launcher3/folder/FolderPagedView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda13;->f$0:Lcom/android/launcher3/folder/FolderPagedView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->removeItem(Landroid/view/View;)V

    return-void
.end method
