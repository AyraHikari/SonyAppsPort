.class public final synthetic Lcom/android/launcher3/folder/FolderNameInfos$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderNameInfos$$ExternalSyntheticLambda0;->f$0:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameInfos$$ExternalSyntheticLambda0;->f$0:Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/android/launcher3/folder/FolderNameInfos;->lambda$contains$0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
