.class public final synthetic Lcom/android/launcher3/folder/FolderNameEditText$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/folder/FolderNameEditText;

.field public final synthetic f$1:[Landroid/view/inputmethod/CompletionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/FolderNameEditText;[Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderNameEditText$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/folder/FolderNameEditText;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderNameEditText$$ExternalSyntheticLambda0;->f$1:[Landroid/view/inputmethod/CompletionInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameEditText$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderNameEditText$$ExternalSyntheticLambda0;->f$1:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderNameEditText;->lambda$displayCompletions$0$com-android-launcher3-folder-FolderNameEditText([Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method
