.class public final synthetic Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/folder/Folder;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/folder/Folder;->lambda$getIconsInReadingOrder$7$com-android-launcher3-folder-Folder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
