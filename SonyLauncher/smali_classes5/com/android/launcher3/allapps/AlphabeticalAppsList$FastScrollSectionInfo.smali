.class public Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
.super Ljava/lang/Object;
.source "AlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AlphabeticalAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FastScrollSectionInfo"
.end annotation


# instance fields
.field public final position:I

.field public final sectionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "sectionName"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    .line 73
    iput p2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->position:I

    .line 74
    return-void
.end method
