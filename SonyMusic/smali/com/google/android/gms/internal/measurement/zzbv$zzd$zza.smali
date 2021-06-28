.class public final enum Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement@@17.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzia;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbv$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzia;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzhz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhz<",
            "Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzh:[Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;


# instance fields
.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    const-string v1, "UNKNOWN_COMPARISON_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    const-string v1, "LESS_THAN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    const-string v1, "GREATER_THAN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    const-string v1, "EQUAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    const-string v1, "BETWEEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zze:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    const/4 v0, 0x5

    .line 29
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zze:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zzh:[Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzby;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzby;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzhz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zzg:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zzh:[Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zze:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    return-object p0

    .line 7
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    return-object p0

    .line 6
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    return-object p0

    .line 4
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzic;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbx;->zza:Lcom/google/android/gms/internal/measurement/zzic;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zzg:I

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zzg:I

    return v0
.end method
