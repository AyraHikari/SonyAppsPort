.class public interface abstract annotation Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent$SettingsType;
.super Ljava/lang/Object;
.source "SettingsChangeEvent.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "SettingsType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final QSB:Ljava/lang/String; = "qsb"

.field public static final SORT_MODE:Ljava/lang/String; = "sort_mode"

.field public static final SWIPE_UP:Ljava/lang/String; = "swipe_up"
