.class public final enum Lcom/android/launcher3/model/data/FolderInfo$LabelState;
.super Ljava/lang/Enum;
.source "FolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/data/FolderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/model/data/FolderInfo$LabelState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/model/data/FolderInfo$LabelState;

.field public static final enum EMPTY:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

.field public static final enum MANUAL:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

.field public static final enum SUGGESTED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

.field public static final enum UNLABELED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;


# instance fields
.field private final mLogAttribute:Lcom/android/launcher3/logger/LauncherAtom$Attribute;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLogAttribute(Lcom/android/launcher3/model/data/FolderInfo$LabelState;)Lcom/android/launcher3/logger/LauncherAtom$Attribute;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->mLogAttribute:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 84
    new-instance v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->UNLABELED:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    const-string v2, "UNLABELED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;-><init>(Ljava/lang/String;ILcom/android/launcher3/logger/LauncherAtom$Attribute;)V

    sput-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->UNLABELED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    .line 87
    new-instance v1, Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->EMPTY_LABEL:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    const-string v4, "EMPTY"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;-><init>(Ljava/lang/String;ILcom/android/launcher3/logger/LauncherAtom$Attribute;)V

    sput-object v1, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->EMPTY:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    .line 90
    new-instance v2, Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    sget-object v4, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->SUGGESTED_LABEL:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    const-string v6, "SUGGESTED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;-><init>(Ljava/lang/String;ILcom/android/launcher3/logger/LauncherAtom$Attribute;)V

    sput-object v2, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->SUGGESTED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    .line 94
    new-instance v4, Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    sget-object v6, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->MANUAL_LABEL:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    const-string v8, "MANUAL"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;-><init>(Ljava/lang/String;ILcom/android/launcher3/logger/LauncherAtom$Attribute;)V

    sput-object v4, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->MANUAL:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    .line 82
    const/4 v6, 0x4

    new-array v6, v6, [Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->$VALUES:[Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/android/launcher3/logger/LauncherAtom$Attribute;)V
    .locals 0
    .param p3, "logAttribute"    # Lcom/android/launcher3/logger/LauncherAtom$Attribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/logger/LauncherAtom$Attribute;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput-object p3, p0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->mLogAttribute:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    .line 100
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/model/data/FolderInfo$LabelState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 82
    const-class v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/model/data/FolderInfo$LabelState;
    .locals 1

    .line 82
    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->$VALUES:[Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    invoke-virtual {v0}, [Lcom/android/launcher3/model/data/FolderInfo$LabelState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    return-object v0
.end method
