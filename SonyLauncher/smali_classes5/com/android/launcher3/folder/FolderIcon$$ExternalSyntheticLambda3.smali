.class public final synthetic Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda3;->f$0:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda3;->f$0:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    check-cast p1, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    invoke-virtual {v0, p1}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->subtractSonyBadgeInfo(Lcom/sonymobile/launcher/badge/SonyBadgeInfo;)V

    return-void
.end method
