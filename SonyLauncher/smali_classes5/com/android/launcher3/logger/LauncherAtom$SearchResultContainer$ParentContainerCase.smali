.class public final enum Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;
.super Ljava/lang/Enum;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParentContainerCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

.field public static final enum ALL_APPS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

.field public static final enum PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

.field public static final enum WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 6121
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    const-string v1, "WORKSPACE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    .line 6122
    new-instance v1, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    const-string v4, "ALL_APPS_CONTAINER"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->ALL_APPS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    .line 6123
    new-instance v4, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    const-string v7, "PARENTCONTAINER_NOT_SET"

    invoke-direct {v4, v7, v3, v2}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    .line 6119
    new-array v6, v6, [Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v3

    sput-object v6, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6126
    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->value:I

    .line 6127
    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;
    .locals 1
    .param p0, "value"    # I

    .line 6137
    packed-switch p0, :pswitch_data_0

    .line 6141
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 6139
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->ALL_APPS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    return-object v0

    .line 6138
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    return-object v0

    .line 6140
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6133
    invoke-static {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6119
    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;
    .locals 1

    .line 6119
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 6146
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->value:I

    return v0
.end method
